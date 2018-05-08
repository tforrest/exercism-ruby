# Sieve calculates all the prime numbers from 2 to n
class Sieve
  def initialize(size)
    @primes = {}
    2.upto(size) do |i|
      @primes[i] = true
    end
  end
  def primes
    i = 1
    while i < Math.sqrt(@primes.length)
      i += 1
      unless @primes[i]
        next
      end

      j = i * i
      while j <= @primes.length + 1
        @primes[j] = false
        j += i
      end
    end
    @primes.delete_if { |_, value| value == false }
    @primes.keys.compact.sort
  end
end
