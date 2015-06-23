class Sum
  attr_accessor :numbers, :operators

  def initialize(numbers = %w[1 2 3 4 5 6 7 8 9], operators =  [ '+', '-',  ''] )
    @numbers = numbers
    @operators = operators
  end

  def ev
    eval(self.to_s)
  end

  def to_s
    str = ''
    str << @numbers[0]
    str << @operators[0]
    str << @numbers[1]
    str << @operators[0]
    str << @numbers[2]
    str << @operators[0]
    str << @numbers[3]
    str << @operators[0]
    str << @numbers[4]
    str << @operators[0]
    str << @numbers[5]
    str << @operators[0]
    str << @numbers[6]
    str << @operators[0]
    str << @numbers[7]
    str << @operators[0]
    str << @numbers[8]
    str
  end
end
