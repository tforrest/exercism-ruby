class Grains 
  def self.square(n)
    raise ArgumentError if n < 1 || n > 64
    square_helper(2, n - 1)
  end

  def self.square_helper(x, n)
    return 1 if n.zero?
    return x if n == 1
    return square_helper(x * x, n / 2) if n.modulo(2).zero?
    x * square_helper(x * x, (n - 1) / 2)
  end

  def self.total
    (1..64).map{ |n| square(n) }.sum
  end
end
