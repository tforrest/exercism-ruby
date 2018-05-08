# Raindrops sings you a sing
class Raindrops
  def self.convert(num)
    res = ''
    res << 'Pling' if (num % 3).zero?
    res << 'Plang' if (num % 5).zero?
    res << 'Plong' if (num % 7).zero?
    res << num.to_s if res.empty?
    res
  end
end

module BookKeeping
  VERSION = 3
end
