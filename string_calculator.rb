def add(numbers)
    return 0 if numbers.empty?
    # numbers.split(',').map(&:to_i).reduce(0, :+)
    # numbers.split(/[\s,]+/).map(&:to_i).reduce(0, :+)
    delimiter = /[\s,]+/

    if numbers.start_with?("//")
        parts = numbers.split("\n", 2)
        delimiter = Regexp.escape(parts[0][2..])
        numbers = parts[1]
    end

    nums = numbers.split(/#{delim}/).map(&:to_i)
    negatives = nums.select { |num| num < 0 }
    raise ArgumentError, "negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?
    nums.reduce(0, :+)
end