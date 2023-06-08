class Solver
  def factorial(n)
     raise ArgumentError, "Argument must be a positive integer" unless n.is_a?(Integer)
     raise ArgumentError, "Argument must be a positive integer" if n < 0
    return 1 if n.zero? || n == 1
    return factorial(n - 1) * n
  end
end
