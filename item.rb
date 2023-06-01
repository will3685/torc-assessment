class Item 
  attr_reader :name, :price, :quantity, :imported, :category

  def initialize(name, price, quantity, imported, category)
    @name = name
    @price = price
    @quantity = quantity
    @imported = imported
    @category = category
  end

end