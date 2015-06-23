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

    (@numbers.length-1).times do |position|
      str << @numbers[position]
      str << @operators[idx(@numbers.length - position - 2)]
    end
    str << @numbers[@numbers.length-1]

    str
  end

  def idx(factor = 0)
    (@cx/(@operators.length**factor)) % @operators.length
  end

  def inc
    @cx += 1
  end

end
