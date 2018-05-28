class String
  def remove_invalid_characters
    gsub(/[$^!@%:&,".]/, ' ')
  end

  def remove_single_quotes
    gsub(/(\')\S+(\')/) { |word| word[1...-1] }
  end
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def parsed_phrase
    parsed_phrase = @phrase.downcase
    parsed_phrase.remove_invalid_characters.remove_single_quotes
  end

  def word_count
    counts = Hash.new(0)
    parsed_phrase.split.map { |word| counts[word.downcase] += 1 }
    counts
  end
end
