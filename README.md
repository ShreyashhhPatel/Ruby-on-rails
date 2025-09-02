
# Ruby Revision Handbook — Basics → Intermediate → Advanced (Updated 2025-09-02)

Target versions: **Ruby 3.2–3.4** (notes for 3.4 included). Designed for quick revision with runnable examples and **practice exercises** (with expected outputs in comments).

> New in Ruby 3.4 (Dec 25, 2024): **Prism** is the default parser, **YJIT** improvements, **Modular GC**, `it` block parameter, and more. See the “What’s New” notes near the end.

---

## Table of Contents

1. Setup (Windows/macOS/Linux) & IRB  
2. Language Basics (values, variables, constants)  
3. Numbers, Strings, Symbols (interpolation, heredocs, regex)  
4. Collections: Array, Hash, Range  
5. Control Flow & Pattern Matching (`case` / `in`)  
6. Methods (positional, keyword, splat)  
7. Blocks, `yield`, Procs, Lambdas (arity & return rules)  
8. Enumerable Power Moves (`map`, `select`, `reduce`, `group_by`, `tally`)  
9. Files & IO (text, CSV, JSON)  
10. Exceptions & Custom Errors  
11. Modules & Mixins (`include`, `extend`, `prepend`)  
12. Classes & OOP (attributes, `self`, visibility, class methods)  
13. Metaprogramming (`method_missing`, `define_method`, `send`, refinements)  
14. Concurrency (Threads, Fibers, Ractors)  
15. Packaging & Tooling (RubyGems, Bundler, RSpec, RuboCop, RDoc/YARD)  
16. Performance Tips (YJIT, frozen strings, memory)  
17. What’s New in Ruby 3.4 (quick hits)  
18. Mini‑Projects & Practice Sets  

---

## 1) Setup & IRB

**Windows** (quick path):
1. Install **RubyInstaller (with DevKit)** — choose **MSYS2 / MINGW toolchain** during `ridk install`.  
2. Open **“Start Command Prompt with Ruby”** or use PowerShell where `ruby`, `irb`, `gem` work.
3. Verify:
```bat
ruby -v        # (Use -v or --version; NOT -version)
irb --version
gem -v
```
> Tip: You can also use **WSL2** for a Linux-like environment.

**macOS/Linux**:
- Use **rbenv** or **asdf** to manage versions.  
- `ruby -v`, `irb`, `gem`, `bundle` should work.

**IRB quickies**:
```rb
# Start with: irb
2 + 2            #=> 4
p [1,2,3].map { _1 * 2 }  # Ruby 3’s numbered parameter
```

**Practice**
1) Print your Ruby version from IRB.  
2) Define a variable `name = "Ruby"` and print `"Hello, Ruby!"` using interpolation.

---

## 2) Language Basics

- **Numbers**: Integer, Float, Rational (`2r`), Complex (`1+2i`)  
- **Booleans**: only `nil` and `false` are falsy; everything else truthy.  
- **Variables**: snake_case locals; `UPPER_CASE` constants (convention).  
- **Symbols**: lightweight immutable identifiers `:id`, often used as hash keys.

```rb
x = 10
PI = 3.14159
:id == :id #=> true
```

**Practice**
1) Create `price = 12.5` and `qty = 4`; print total.  
2) Demonstrate integer division vs float division (`7/2` vs `7.0/2`).

---

## 3) Numbers, Strings, Symbols

```rb
# Strings
name = "Ada"
puts "Hi, #{name}!"
puts %q(Quotes 'not' expanded)   # single-quoted-like
puts %Q(Interpolation like #{2+3})

# Heredocs
doc = <<~TEXT
  Line 1
  Line 2
TEXT

# Regex
"ruby 3.4".match?(/\A\w+\s\d\.\d\z/)  #=> true
"Mississippi".scan(/is/).size         #=> 2
```

**Practice**
1) Build a heredoc that prints a 3-line banner.  
2) Write a regex that matches a Canadian postal code-like pattern `A1A 1A1` (simplified).

---

## 4) Collections

```rb
# Array
a = [1,2,3]; a << 4; a[0] = 99  #=> [99,2,3,4]
a.first(2)                      #=> [99,2]
a.rotate(1)                     #=> [2,3,4,99]

# Hash
opts = {host: "localhost", port: 5432}
opts[:host]                    #=> "localhost"
opts.fetch(:user, "guest")     #=> "guest"

# Range
(1..5).to_a                    #=> [1,2,3,4,5]
(1...5).to_a                   #=> [1,2,3,4]
("a".."f").to_a                #=> ["a","b","c","d","e","f"]
```

**Practice**
1) From `["a","bb","bb","ccc"]` create `{1=>1, 2=>2, 3=>1}` (length => count).  
2) Merge two hashes with symbol keys and show how to provide default values with a block.

---

## 5) Control Flow & Pattern Matching

```rb
n = 7
if n.even? then puts "even" else puts "odd" end

# case / when
grade = 86
case grade
when 90..100 then :A
when 80..89  then :B
else :C
end

# Pattern Matching (Ruby 2.7+)
record = {id: 42, user: {name: "Ada", role: "admin"}}
case record
in {user: {name:, role: "admin"}}
  "Admin: #{name}"
in {user: {name:}}
  "User: #{name}"
else
  "Unknown"
end
#=> "Admin: Ada"
```

**Practice**
1) Use pattern matching to extract `lat, lng` from `{coords: [43.7, -79.4]}`.  
2) Write a `case` that classifies a point `(x,y)` as origin/x-axis/y-axis/quadrant.

---

## 6) Methods (positional, keyword, splat)

```rb
def f(a, b=0, *rest, c: 1, **kw, &blk)
  total = a + b + c + rest.sum
  total += kw[:bonus].to_i
  total += blk.call if blk
  total
end

f(1, 2, 3, 4, c: 10, bonus: 5) { 7 }  #=> 32
# (1+2+10)+(3+4) + 5 + 7
```

**Practice**
1) Implement `mean(*xs, ignore: nil)` that skips values equal to `ignore`.  
2) Implement `clamp(x, low: 0, high: 1, inclusive: true)`.

---

## 7) Blocks, Yield, Procs, Lambdas

```rb
def twice
  yield
  yield
end
twice { puts "hi" }  # prints twice

# Proc vs Lambda (arity/return semantics)
p1 = Proc.new { |x,y| x.to_i + y.to_i }  # lenient arity
p1.call(1)          #=> 1
p2 = ->(x,y) { x+y }  # strict arity, returns from lambda only
# return inside a lambda returns from the lambda; inside a Proc can return from the method (careful!).
```

**Practice**
1) Write `repeat(n){...}` that yields `n` times.  
2) Convert a block into an explicit `Proc` parameter and call it later.

---

## 8) Enumerable Superpowers

```rb
nums = [1,2,3,4,5]
nums.map { _1 * 2 }          #=> [2,4,6,8,10]
nums.select(&:odd?)          #=> [1,3,5]
nums.reduce(0, :+)           #=> 15
%w[apple apricot banana].group_by { _1[0] }  #=> {"a"=>["apple","apricot"], "b"=>["banana"]}
"mississippi".chars.tally    #=> {"m"=>1,"i"=>4,"s"=>4,"p"=>2}
```

**Practice**
1) From `names = %w[Ada Alan Grace]` build a `{initial => [names...]}` map.  
2) Given `[3,1,4,1,5,9]`, compute running sums → `[3,4,8,9,14,23]` (use `each_with_object` or `inject`).

---

## 9) Files & IO (CSV/JSON)

```rb
require "json"
require "csv"

# Write
File.write("hello.txt", "Hi\n")

# Read
puts File.read("hello.txt")

# CSV → JSON
rows = CSV.read("scores.csv", headers: true) # name,score
data = rows.map { |r| {name: r["name"], score: r["score"].to_i} }
File.write("scores.json", JSON.pretty_generate(data))
```

**Practice**
1) Append a timestamped line to `app.log`.  
2) For a CSV of products, compute average price by category.

---

## 10) Exceptions

```rb
class NegativeError < StandardError; end

def sqrtish(x)
  raise NegativeError, "no negatives" if x < 0
  Math.sqrt(x)
rescue NegativeError => e
  warn e.message
  nil
ensure
  # cleanup
end
```

**Practice**
1) Implement `safe_div(a,b)` returning `nil` on division by zero.  
2) Wrap a risky parser, re-raise as `RuntimeError` with `cause` preserved.

---

## 11) Modules & Mixins

```rb
module Loggable
  def log(msg) = puts "[#{self.class}] #{ {time: Time.now, msg: msg}.inspect }"
end

class Service
  include Loggable  # adds instance method log
end

class Dashboard
  extend Loggable   # adds class method log
end
```

**Practice**
1) Create a module `Cacheable` with `fetch(key){...}` storing results in a hash.  
2) Use `prepend` to wrap and time an instance method.

---

## 12) Classes & OOP

```rb
class BankAccount
  attr_reader :owner, :balance

  def initialize(owner, balance: 0.0)
    @owner = owner
    @balance = Float(balance)
  end

  def deposit(amount)
    raise ArgumentError, "amount>0" unless amount > 0
    @balance += amount
  end

  def withdraw(amount)
    raise "insufficient" if amount > @balance
    @balance -= amount
  end

  def to_s = "#{owner}: $#{'%.2f' % balance}"

  class << self
    def from_csv(line)  # class method
      owner, bal = line.strip.split(",")
      new(owner, balance: bal)
    end
  end
end
```

**Practice**
1) Add transfer between two accounts.  
2) Define equality `==` for `Point(x,y)` and make it hashable (define `eql?` and `hash`).

---

## 13) Metaprogramming

```rb
class Prismy
  def method_missing(name, *args, &blk)
    if name.to_s.start_with?("say_")
      word = name.to_s.split("say_").last
      puts word.capitalize
    else
      super
    end
  end
  def respond_to_missing?(name, include_private=false)
    name.to_s.start_with?("say_") || super
  end
end

class Model
  [:title, :body].each do |attr|
    define_method(attr) { instance_variable_get(:"@{attr}") }
    define_method("\#{attr}=") { |v| instance_variable_set(:"@{attr}", v) }
  end
end
```

**Practice**
1) Write `attr_checked :age` that generates a setter raising if negative.  
2) Use `refinements` to monkey‑patch `String#titleize` only in a given scope.

---

## 14) Concurrency (Threads, Fibers, Ractors)

```rb
# Threads
require "net/http"
urls = ["https://example.com", "https://ruby-lang.org"]
threads = urls.map do |u|
  Thread.new do
    Net::HTTP.get(URI(u)).size
  end
end
p threads.map(&:value)

# Fibers (lightweight cooperators)
Fiber.schedule { p "hello from fiber" } if Fiber.respond_to?(:schedule)

# Ractors (parallel, no shared mutable objects)
r = Ractor.new { 1+2 }
p r.take   #=> 3
```

**Practice**
1) Use Threads + Queue to fetch 5 URLs concurrently and collect sizes.  
2) Send/receive values between two Ractors (shareable objects only).

---

## 15) Packaging & Tooling

```bash
gem install bundler
bundle init
# Add gems to Gemfile and `bundle install`
```

- **Testing**: Minitest (stdlib) or **RSpec** (`gem 'rspec'`)  
- **Linting**: **RuboCop** (`gem 'rubocop'`)  
- **Docs**: RDoc (built‑in) or **YARD**  
- **Scripts**: Rake tasks (define in `Rakefile`)  

**Practice**
1) Initialize a gem bundle for a CLI app; add `rspec` + `rubocop`.  
2) Write a Rake task `rake report:daily` that prints yesterday’s date.

---

## 16) Performance Tips

- Try Ruby 3.3+ with **YJIT** (JIT compiler) enabled by default in many builds.  
- Prefer `freeze`d constants and avoid needless object churn in hot paths.  
- Use `String#<<` to append in loops; avoid `+` where possible.  
- Profile with `ruby-prof` or `stackprof`; benchmark with `benchmark/ips`.

**Practice**
1) Compare `+"a"` vs `"a".dup` vs `"a"` in a loop; measure with `Benchmark.realtime`.  
2) Benchmark JSON parsing with different libraries (e.g., `json` vs `oj`, if available).

---

## 17) What’s New in Ruby 3.4 (highlights)

- **Prism is the default parser** (switch back via `--parser=parse.y`).  
- **YJIT**: performance improvements and bug fixes across patch releases.  
- **Modular GC** and runtime niceties.  
- **`it` block parameter**: shorthand inside blocks for single parameter (like `_1` but named `it`).  
- **Happy Eyeballs v2** in `socket`.  

(See official release notes.)

---

## 18) Mini‑Projects

1) **Todo CLI**: Add/remove/list tasks persisted to `tasks.json`.  
2) **HTTP Fetcher**: Concurrently fetch a list of URLs (Threads) and print sizes.  
3) **Mini Blog Model**: `Post` with validations, in‑memory store, JSON export/import.  
4) **Log Analyzer**: Read a log, `tally` status codes, output top 3.

**Stretch goals**: add tests (RSpec), a `Rakefile`, and RuboCop config.

---

### Quick Quiz (10)
1) Which values are falsy?  
2) Symbol vs String in Hash keys?  
3) Difference between Proc and lambda (arity/return)?  
4) How to accept keyword args and extra keyword args?  
5) One use of pattern matching `in`?  
6) What does `include` vs `extend` do?  
7) What is `self` inside a class method body?  
8) How do Ractors differ from Threads?  
9) What does `define_method` do?  
10) One advantage of YJIT?

**Answers**: (1) `nil`, `false` only. (2) Symbols are immutable and faster for identity; strings are mutable. (3) Lambda has strict arity and returns to caller; Proc lenient and may return from method. (4) `def f(a:, **kw)` to capture rest. (5) Deconstruct nested data safely. (6) `include` adds instance methods; `extend` adds class methods. (7) The singleton class (the class object itself). (8) Ractors run in parallel and don’t share mutable objects. (9) Defines a method at runtime from a block. (10) Faster warm‑up and execution for many workloads.

---

Happy Ruby‑ing! Keep this file nearby and run the snippets in IRB or a script.
