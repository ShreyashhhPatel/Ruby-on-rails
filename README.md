
# Ruby on Rails Revision Handbook (Basics → Advanced, 2025-09-02)

Target: Ruby 3.4+, Rails 8.0+ (notes for 7.2). Covers setup, MVC, Turbo/Hotwire, Active Record, Solid Queue/Cache, Action Mailer, Active Storage, Action Cable, auth, tests, and deployment.

## 1) Install & Verify
- macOS/Linux: rbenv or ruby-install/chruby.
- Windows: RubyInstaller **with MSYS2/MINGW DevKit** (choose option 3 in `ridk install`).
```bash
ruby -v         # (not: ruby -version)
rails -v
bundle -v
```

## 2) New App (Rails 8 defaults)
```bash
rails new blog --css=tailwind           # SQLite + Importmap + Propshaft
rails new blog --database=postgresql --css=tailwind
rails new blog --skip-solid              # skip Solid Queue/Cache
cd blog && bin/setup && bin/rails s
```

## 3) MVC Quickstart
```bash
bin/rails g model Post title:string body:text published:boolean
bin/rails db:migrate
bin/rails g controller Posts index show new create edit update destroy
```
`config/routes.rb`:
```rb
root "posts#index"
resources :posts
```
Controller:
```rb
class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  def index; @posts = Post.where(published: true).order(created_at: :desc); end
  def new; @post = Post.new; end
  def create
    @post = Post.new(post_params)
    if @post.save then redirect_to @post, notice: "Post created."
    else render :new, status: :unprocessable_entity end
  end
  def update
    if @post.update(post_params) then redirect_to @post, notice: "Post updated."
    else render :edit, status: :unprocessable_entity end
  end
  def destroy; @post.destroy!; redirect_to posts_path, notice: "Post deleted."; end
  private
  def set_post = @post = Post.find(params[:id])
  def post_params = params.require(:post).permit(:title, :body, :published)
end
```

## 4) Routing DSL
```rb
resources :posts do
  resources :comments, only: %i[create destroy]
  collection { get :search }
  member { patch :publish }
end
```

## 5) Forms & Validations
Model:
```rb
class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 120 }
  validates :body, presence: true
  scope :published, -> { where(published: true).order(created_at: :desc) }
end
```
View:
```erb
<%= form_with model: @post do |f| %>
  <%= f.label :title %> <%= f.text_field :title %>
  <%= f.label :body  %> <%= f.text_area  :body  %>
  <%= f.check_box :published %> Published
  <%= f.submit %>
<% end %>
```

## 6) Turbo & Hotwire (Turbo 8)
- Add to layout:
```erb
<meta name="turbo-refresh-method" content="morph">
<meta name="turbo-refresh-scroll" content="preserve">
```
- Stream updates:
```rb
class Post < ApplicationRecord
  after_create_commit -> { broadcast_prepend_to :posts }
  after_update_commit -> { broadcast_replace_to :posts }
  after_destroy_commit -> { broadcast_remove_to :posts }
end
```

## 7) Active Record Essentials
Associations:
```rb
class Post < ApplicationRecord; has_many :comments, dependent: :destroy; end
class Comment < ApplicationRecord; belongs_to :post; validates :body, presence: true; end
```
Queries:
```rb
Post.published.includes(:comments).limit(10)
Post.where("title ILIKE ?", "%rails%")  # Postgres
```
Migrations:
```bash
bin/rails g migration AddPublishedAtToPosts published_at:datetime:index
bin/rails db:migrate
```

## 8) Background Jobs (Solid Queue)
```rb
# config/application.rb
config.active_job.queue_adapter = :solid_queue

class PublishPostJob < ApplicationJob
  queue_as :default
  def perform(post_id)
    Post.find(post_id).update!(published: true, published_at: Time.current)
  end
end
# PublishPostJob.perform_later(@post.id)
```

## 9) Caching (Solid Cache)
```rb
Rails.cache.fetch("sidebar_stats", expires_in: 15.minutes) do
  { posts: Post.count, comments: Comment.count }
end
```

## 10) Active Storage (file uploads)
```bash
bin/rails active_storage:install && bin/rails db:migrate
```
Model:
```rb
class Post < ApplicationRecord; has_one_attached :cover; end
```
View:
```erb
<%= image_tag @post.cover.variant(resize_to_limit: [800, 400]) if @post.cover.attached? %>
```

## 11) Action Mailer
```bash
bin/rails g mailer PostMailer
```
```rb
class PostMailer < ApplicationMailer
  def published(post); @post = post; mail to: post.user.email, subject: "Your post was published"; end
end
```

## 12) Action Cable + Turbo Streams
```erb
<%= turbo_stream_from [@post, :comments] %>
<div id="comments"><%= render @post.comments %></div>
```
```rb
class Comment < ApplicationRecord
  after_create_commit -> { broadcast_append_to [post, :comments] }
end
```

## 13) Authentication (Rails 8)
```bash
bin/rails generate authentication
bin/rails db:migrate
```
Add a simple registrations controller for sign-up.

## 14) Testing
- Minitest (default) + system tests.
- RSpec: `bundle add rspec-rails && bin/rails g rspec:install`.

## 15) Deployment (Kamal 2)
```bash
bundle add kamal
bin/kamal init && bin/kamal setup && bin/kamal deploy
```

## 16) Windows & WSL
- Use RubyInstaller with MSYS2 DevKit. Install native toolchain.
- Prefer WSL2 for smoother Linux-like Rails dev.

## Mini Project: Pulse
CRUD posts + comments, Turbo Streams live updates, nightly publish job (Solid Queue), fragment caching, uploads with Active Storage, auth.
