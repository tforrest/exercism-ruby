require 'set'

class Pangram
  def self.pangram? (phrase)
    Set.new(phrase.gsub(/[^a-zA-Z]/, '').downcase.chars).length == 26
  end
end

module BookKeeping
  VERSION = 6
end
