class Year
  class << self
    def leap?(year)
      (year % 4).zero? && ((year % 100).nonzero? || (year % 400).zero?)
    end
  end
end
