class Sum
  attr_accessor :numbers, :operators

  def initialize(numbers = %w[1 2 3 4 5 6 7 8 9], operators =  [ '+', '-',  ''] )
    @numbers = numbers
    @operators = operators
    @cx = 0
  end

  def ev
    eval(self.to_s)
  end

  def to_s
    str = ''
    str << @numbers[0]
    str << @operators[idx(7)]
    str << @numbers[1]
    str << @operators[idx(6)]
    str << @numbers[2]
    str << @operators[idx(5)]
    str << @numbers[3]
    str << @operators[idx(4)]
    str << @numbers[4]
    str << @operators[idx(3)]
    str << @numbers[5]
    str << @operators[idx(2)]
    str << @numbers[6]
    str << @operators[idx(1)]
    str << @numbers[7]
    str << @operators[idx(0)]
    str << @numbers[8]
    str
  end

  def idx(factor = 0)
    (@cx/(@operators.length**factor)) % @operators.length
  end

  def inc
    @cx += 1
  end

end
