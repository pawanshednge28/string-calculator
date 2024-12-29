def add(numbers)
  puts "Input: #{numbers}"

  return 0 if numbers.empty?
  if numbers.start_with?("//")
    delimiter = numbers[2..-1].split("\n")[0]
    puts "Custom delimiter: #{delimiter}" 
    numbers = numbers.split("\n")[1].gsub(delimiter, ",")
  end

  num_list = numbers.split(/[\n,]+/).map(&:to_i)
  puts "Numbers after splitting: #{num_list}" 

  negatives = num_list.select { |n| n < 0 }
  if negatives.any?
    raise "negative numbers not allowed #{negatives.join(',')}"
  end

  result = num_list.sum
  puts "Sum of numbers: #{result}" 
  result
end
