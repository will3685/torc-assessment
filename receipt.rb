class Receipt
  BASIC_TAX_RATE = 10
  IMPORT_DUTY_RATE = 5

  def initialize(items)
    @items = items
  end

  def calculate_tax(item)
    tax = 0
    tax += item.price * (BASIC_TAX_RATE / 100.0) unless exempt_from_basic_tax?(item)
    tax += item.price * (IMPORT_DUTY_RATE / 100.0) if item.imported
    # puts "#{tax}"
    round_tax(tax)
  end

  def exempt_from_basic_tax?(item)
    exempt_categories = ['book', 'food', 'medical products']
    exempt_categories.include?(item.category.downcase)
  end

  def round_tax(tax)
    rounded_tax = (tax * 20).ceil.to_f / 20
    round_to_nearest_five_cents(rounded_tax)
  end

  def round_to_nearest_five_cents(amount)
    (amount * 20).ceil.to_f / 20
  end

  def formatted_result(total)
    total.round(2)
  end

  def calculate_total_amount
    total = 0
    total_tax = 0 

    @items.each do |item|
      tax = calculate_tax(item)
      format_result = formatted_result((item.price + tax))
      total += format_result * item.quantity
      total_tax += tax
    end

    [total, total_tax]
  end

  def generate_receipt
    total, total_tax = calculate_total_amount

    puts "Receipt:"
    @items.each do |item|
      tax = calculate_tax(item)
      puts "#{item.quantity} #{item.name}: #{(item.quantity) * formatted_result((item.price + tax))}"
    end

    puts "Sales Taxes: #{total_tax}"
    puts "Total: #{total}"
  end
end