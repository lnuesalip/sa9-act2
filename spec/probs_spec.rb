require '/home/lealip/workspace-3081/sa9-act2/lib/probs.rb'

# Problem 1
RSpec.describe User do
  let(:user1) { User.new("user23094") }

  describe "#log_in" do
    it "logs the user in" do
      user1.log_in
      expect(user1.logged_in).to be true
    end
  end

  describe "#log_out" do
    it "logs the user out" do
      user1.log_out
      expect(user1.logged_in).to be false
      end
    end

  describe "#username" do
    it "returns the correct username" do
      expect(user1.username).to eq("user23094")
    end
  end
end

# Problem 2
RSpec.describe TodoList do
  let(:todo1) { TodoList.new }
  # todo1.add("gym")
  # todo1.add("school")
  # todo1.add("work")

  describe "#add" do
    it "adds a todo to the list" do
      todo1.add("grocery shopping")
      todo1.add("gym")
      expect(todo1.todos.include? "grocery shopping").to be true
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo1.add("work")
      todo1.add("gym")
      todo1.remove("gym")
      expect(todo1.todos.include? "gym").to be false
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo1.add("gym")
      todo1.add("work")
      todo1.add("school")
      expect(todo1.todos).to eq(["gym", "work", "school"])
    end
  end
end

# # Problem 3
RSpec.describe StringWrapper do
  let(:sw1) { StringWrapper.new("Pineapple") }

  describe "#reverse" do
    it "reverses the string" do
      expect(sw1.reverse).to eq("Pineapple".reverse)
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(sw1.upcase).to eq("Pineapple".upcase)
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      expect(sw1.downcase).to eq("Pineapple".downcase)
    end
  end
end

# # Problem 4
RSpec.describe BankAccount do
  let(:bank1) { BankAccount.new(500) }

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      bank1.deposit(50)
      expect(bank1.balance).to eq(550)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      bank1.withdraw(100)
      expect(bank1.balance).to eq(400)
    end

    it "does not change the balance if insufficient funds" do
      bank1.withdraw(600)
      expect(bank1.balance).to eq(500)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      expect(bank1.balance).to eq(500)
    end
  end
end

# # Problem 5
RSpec.describe TemperatureConverter do

  describe ".celsius_to_fahrenheit" do
    it "correctly converts 0°C to 32°F" do
      expect(TemperatureConverter.celsius_to_fahrenheit(0)).to eq(32)
    end

    it "correctly converts 100°C to 212°F" do
      expect(TemperatureConverter.celsius_to_fahrenheit(100)).to eq(212)
    end
  end

  describe ".fahrenheit_to_celsius" do
    it "correctly converts 32°F to 0°C" do
      expect(TemperatureConverter.fahrenheit_to_celsius(32)).to eq(0)
    end

    it "correctly converts 212°F to 100°C" do
      expect(TemperatureConverter.fahrenheit_to_celsius(212)).to eq(100)
    end
  end
end
