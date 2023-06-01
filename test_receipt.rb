require 'minitest/autorun'
require_relative 'item'
require_relative 'receipt'

class TestReceipt < Minitest::Test
  def setup
    @exempt_item = Item.new('book', 12.49, 1, false, 'book')
    @taxable_item = Item.new('music CD', 14.99, 1, false, 'other')
    @imported_item = Item.new('imported box of chocolate', 10.00, 1, true, 'imported')
    @items = [@exempt_item, @taxable_item, @imported_item]
    @receipt = Receipt.new(@items)
  end

  def test_calculate_tax_for_exempt_item
    tax = @receipt.calculate_tax(@exempt_item)
    assert_equal 0, tax
  end

  def test_calculate_tax_for_taxable_item
    tax = @receipt.calculate_tax(@taxable_item)
    assert_equal 1.5, tax
  end

  def test_calculate_tax_for_imported_item
    tax = @receipt.calculate_tax(@imported_item)
    assert_equal 0.05, tax

  def test_calculate_total_amount
    total, total_tax = @receipt.calculate_total_amount
    assert_equal 42.32, total
    assert_equal , total_tax
  end
end