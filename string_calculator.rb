def add(numbers)
    return 0 if numbers.empty?
    # numbers.split(',').map(&:to_i).reduce(0, :+)
    # numbers.split(/[\s,]+/).map(&:to_i).reduce(0, :+)
    nums = numbers.split(/[\s,]+/).map(&:to_i)
    negatives = nums.select { |num| num < 0 }
    raise ArgumentError, "negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?
    nums.reduce(0, :+)
end