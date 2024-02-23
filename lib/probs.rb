
# Problem 1
class User
  attr_reader :username, :logged_in

  def initialize(username)
    @username = username
    @logged_in = false
  end

  def log_in
    @logged_in = true
  end

  def log_out
    @logged_in = false
  end
end

# Problem 2
class TodoList
  def initialize
    @todos = []
  end

  def add(todo)
    @todos << todo
  end

  def remove(todo)
    @todos.delete(todo)
  end

  def todos
    @todos.dup
  end
end

# Problem 3
class StringWrapper
  def initialize(str)
    @str = str
  end

  def reverse
    @str.reverse
  end

  def upcase
    @str.upcase
  end

  def downcase
    @str.downcase
  end
end

# Problem 4
class BankAccount
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount if amount <= @balance
  end
end

# Problem 5
class TemperatureConverter
  def self.celsius_to_fahrenheit(celsius)
    (celsius * 9.0 / 5) + 32
  end

  def self.fahrenheit_to_celsius(fahrenheit)
    (fahrenheit - 32) * 5.0 / 9
  end
end
