class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    puts "Hi, I'm #{@name} and I'm #{@age} years old."
  end

  protected

    def update_name(new_name)
      @name = new_name
    end
end

class Adult < Person
  def marry(spouse_name)
    new_full_name = "#{@name.split.first} #{spouse_name.split.first}"
    update_name(new_full_name)
  end
end

alice = Adult.new("Alice Smith",  27)
puts "1234"
alice.introduce
puts "5678"

alice.marry("Richard Roy")
puts "9012"

alice.introduce


puts "------------"

class Person
  def initialize(name, age)
    @name = name
    @age = age
    @username = generate_username
  end

  def introduce
    puts "Hi, I'm #{@name} and I'm #{@age} years old. My username is #{@username}"
  end

  protected

    def update_name(new_name)
      @name = new_name
    end

  private

    def generate_username
      name_parts = @name.split
      "#{name_parts.first.downcase}_#{@age}"
    end
end

person1 = Person.new("Albert",  23)
person1.introduce


puts "------------###########------------"

# class PersonConsider the provided BankAccount class and its access control levels: public, protected, and private.

# Your task is to implement the withdraw method and the sufficient_funds? method in the BankAccount class.

# The withdraw method should adjust the account balance by subtracting the withdrawal amount if there are sufficient funds as determined by the sufficient_funds? method. Make the withdraw method a protected method, restricting direct access from outside the class.

# The sufficient_funds? method should return a boolean value based on whether the account has sufficient funds for the intended withdrawal. Define the sufficient_funds? method as private to restrict its access to the object's context only.

# Additionally, you need to define a secondary withdraw method in the SavingsAccount class, allowing a withdrawal of up to $1000 at a time.

# ruby
# class BankAccount


class BankAccount
  def initialize(account_number, balance)
    @account_number = account_number
    @balance = balance
  end

  def display_balance
    puts "Account Number: #{@account_number}"
    puts "Balance: $#{@balance}"
  end

    protected
  def withdraw(amount)
    if sufficient_funds?(amount)
        @balance -= amount
        puts " Withdraw of #{amount} sucessfully."
    else 
        puts "insufficient funds for withdraw of #{amount}"
    end
  end

  private
  def sufficient_funds?(amount) 
    @balance >= amount

  end
  
end

class SavingsAccount < BankAccount
    def withdraw(amount)
      if amount <= 1000
        super(amount)
      else
        puts "Withdrawal amount exceeds the $1000 limit for SavingsAccount."
      end
    end
end

account = SavingsAccount.new("123456789", 5000)
account.display_balance
account.withdraw(500)
account.display_balance 
