require_relative 'item'
require_relative 'receipt'

## name, price, quantity, imported, category

items = [
  # Item.new('book', 12.49, 2, false, 'book'),
  Item.new('imported box of chocolates', 10.00, 1, true, 'food'),
  # Item.new('chocolate bar', 0.85, 1, false, 'food')
]

receipt = Receipt.new(items)
receipt.generate_receipt