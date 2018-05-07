class Sieve
  def initialize(size)
    @primes = Hash.new
    2.upto(size) do |i|
      @primes[i] = true
    end
  end

  def primes
    i = 1
    while i < Math.sqrt(@primes.length)
      i = i + 1
      if @primes[i] == false
        next 
      end
      j = i*i
      while j <= @primes.length+1
        @primes[j] = false
        j += i
      end
      
    end
    @primes.delete_if {|key, value| value == false }
    @primes.keys.compact.sort
  end
end