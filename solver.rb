class Solver
  def factorial(num)
    raise ArgumentError, 'Argument must be a positive integer' unless num.is_a?(Integer)
    raise ArgumentError, 'Argument must be a positive integer' if num.negative?
    return 1 if num.zero? || num == 1

    factorial(num - 1) * num
  end

  def reverse(str)
    str.reverse
  end
end
