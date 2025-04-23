def add(numbers)
    return 0 if numbers.empty?
    numbers.split(',').map(&:to_i).reduce(0, :+)
    numbers.split(/[\s,]+/).map(&:to_i).reduce(0, :+)
end