# torc-assessment
Torc assessment repository

#Sales Receipt Generator

This Ruby application generates sales receipts for shopping baskets based on provided items.
It calculates basic sales tax and import duty  according to specific rules. The application follows professional coding standars, including naming conventions, separations of concerns, and units tests.

## Instalation

1. Clone the repository:

  ```bash
  git clone git@github.com:will3685/torc-assessment.git

2. Change to the repository directory:
   cd torc-assessment

Usage 
To generate a sales receipt, follow these steps:
1. Open the `main.rb` file.
2. Modify the `items` array to include the items in the shopping basket. Each item should be an instance of the `Item` class and should include the name, price, quantity and imported flag.

Example:

  items = [
    Item.new('book', 12.49, 2, false),
    Item.new('music CD', 14.99, 1 , false),
    Item.new('chocolate bar), 0.85, 1, false)
  ]

3. Save the `main.rb` file

4. Run the application:

   ruby main.rb

The application will generate the sales receipt and display it in the console.

For Testing Purpose
To run the unit tests, execute the following command:

  ruby test_receipt.rb

The tests are implemented using the Minitest framework, and each test case calidates a specific functionality of the `Receipt` class.

Author: Will Theard




