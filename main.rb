require_relative 'item'
require_relative 'receipt'

## name, price, quantity, imported, category

items = [
  Item.new('book', 12.49, 2, false, 'book'),
  Item.new('music CD', 14.99, 1, false, 'other'),
  Item.new('chocolate bar', 0.85, 1, false, 'food'),
]

receipt = Receipt.new(items)
receipt.generate_receipt