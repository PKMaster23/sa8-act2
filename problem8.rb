class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    validate_amount(amount)
    @balance += amount
    log_transaction("Deposit", amount)
    puts "You have deposited $#{amount}. Your new balance is: $#{@balance}"
  end

  def withdraw(amount)
    validate_amount(amount)
    if amount <= @balance
      @balance -= amount
      log_transaction("Withdrawal", amount)
      puts "You have withdrawn $#{amount}. Your new balance is: $#{@balance}"
    else
      puts "You have insufficient funds. Your current balance is: $#{@balance}"
    end
  end

  private

  def log_transaction(type, amount)
    puts "Your #{type} transaction of $#{amount} has been logged."
  end

  def validate_amount(amount)
    unless amount.is_a?(Numeric) && amount > 0
      raise ArgumentError, "Amount must be a positive numeric value."
    end
  end
end


account = BankAccount.new(1000)

account.deposit(200)
account.withdraw(150)
