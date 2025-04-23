def add(numbers)
    return 0 if numbers.empty?
    # numbers.split(',').map(&:to_i).reduce(0, :+)
    # numbers.split(/[\s,]+/).map(&:to_i).reduce(0, :+)

    delimiter = /[\s,]+/ # Default delimiters are space and comma

    # Check for custom delimiter
    if numbers.start_with?("//")
        parts = numbers.split("\n", 2)
        delimiter = Regexp.escape(parts[0][2..])
        numbers = parts[1]
    end

    # Split the numbers using the delimiter
    nums = numbers.split(/#{delim}/).map(&:to_i)

    # Check for negative numbers
    negatives = nums.select { |num| num < 0 }
    raise ArgumentError, "negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?
    
    # return sum of numbers
    nums.reduce(0, :+)
end