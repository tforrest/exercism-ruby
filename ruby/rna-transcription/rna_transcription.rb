# Complement generates a complement RNA from a DNA string
class Complement
  RNA_MAP = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }.freeze
  def self.of_dna(dna)
    dna.chars.map! { |s| RNA_MAP.fetch(s) }.join
  rescue IndexError
    ''
  end
end

module BookKeeping
  VERSION = 4
end
