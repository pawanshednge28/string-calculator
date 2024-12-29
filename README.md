Project Structure

string-calculator/
├── string_calculator.rb         # Main calculator implementation
├── spec/
│   ├── string_calculator_spec.rb # RSpec tests
│   └── spec_helper.rb           # RSpec configuration
└── README.md                    # Project documentation



# String Calculator

A simple **String Calculator** built using Ruby, developed following **Test-Driven Development (TDD)** principles.

---

## Features

- Adds numbers provided as a string input.
- Handles:
  - Empty strings.
  - Single and multiple numbers separated by commas or newlines.
  - Custom delimiters specified in the input string.
- Throws an exception for negative numbers and lists all negatives in the error message.
- Scalable to handle large inputs and different delimiter formats.

---

## Project Clone
git clone https://github.com/pawanshednge28/string-calculator.git

cd string-calculator



## Run the Ruby script directly:

ruby string_calculator.rb


## Running Tests
## This project uses RSpec for testing run the test suite:

rspec spec/string_calculator_spec.rb
