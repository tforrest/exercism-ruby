class Squares
  def initialize (n)
    @n = n
  end
  
  def square_of_sum
    res = 0 
    (1..@n).each do |i|
      res += i
    end
    res*res
  end

  def sum_of_squares 
    res = 0
    (1..@n).each do |i|
      res += (i * i)
    end
    res
  end

  def difference 
    (self.sum_of_squares - self.square_of_sum).abs
  end
end

module BookKeeping
  VERSION = 4
end