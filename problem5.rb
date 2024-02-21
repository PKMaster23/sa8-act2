module Payments
  class Invoice
    def initialize(amount)
      @amount = amount
    end

    def display
      puts "Invoice Amount: $#{@amount}"
    end
  end

  class Receipt
    def initialize(amount)
      @amount = amount
    end

    def display
      puts "Receipt Amount: $#{@amount}"
    end
  end
end

invoice = Payments::Invoice.new(100)

receipt = Payments::Receipt.new(80)

invoice.display
receipt.display
