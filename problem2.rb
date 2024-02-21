class Gadget
  attr_reader :name
  attr_writer :price
  attr_reader :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

gadget = Gadget.new("IPhone", 500)

puts "Name: #{gadget.name}"

gadget.price = 600

puts "Updated Price: #{gadget.price}"
