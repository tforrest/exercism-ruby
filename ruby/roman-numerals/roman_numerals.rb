public
def to_roman
  [[1000, 'M', '', ''],
   [100, 'C', 'D', 'M'],
   [10, 'X', 'L', 'C'],
   [1, 'I', 'V', 'X']].map do |place|
    build_place(*place)
  end.join('')
end

def build_place(div, prev, curr, nex)
  num = self / div % 10
  case num
  when 1..3
    prev * num
  when 4
    prev + curr
  when 5
    curr
  when 6..8
    curr + (prev * (num - 5))
  when 9
    prev + nex
  else
    ''
  end
end
