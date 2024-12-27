def add(numbers)
  puts "Input: #{numbers}"  # Log the input

  return 0 if numbers.empty? # Handle empty string case

  # Handle custom delimiter
  if numbers.start_with?("//")
    delimiter = numbers[2..-1].split("\n")[0]
    puts "Custom delimiter: #{delimiter}" # Log the custom delimiter
    numbers = numbers.split("\n")[1].gsub(delimiter, ",")
    puts "Modified numbers after applying custom delimiter: #{numbers}" # Log modified numbers
  end

  # Split numbers by commas or newlines
  num_list = numbers.split(/[\n,]+/).map(&:to_i)
  puts "Numbers after splitting: #{num_list}" # Log the numbers array

  # Check for negative numbers
  negatives = num_list.select { |n| n < 0 }
  if negatives.any?
    puts "Negative numbers detected: #{negatives}" # Log detected negatives
    raise "negative numbers not allowed #{negatives.join(',')}"
  end

  # Calculate and return the sum
  result = num_list.sum
  puts "Sum of numbers: #{result}" # Log the sum
  result
end
puts "=============================="
puts add("1,2,5")       # Output: 6
puts "=============================="
puts add("//;\n1;2;3")  # Output: 6
puts "=============================="
puts add("1\n2,3")      # Output: 6
puts "=============================="
puts add("")            # Output: 0
puts "=============================="
