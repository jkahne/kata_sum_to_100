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
    # should inc once for every time line 33 goes through all operations
    # should increment when counter is 3, 6, 9, etc
    str << @operators[ @cx / @operators.length ] 
    str << @numbers[7]
    str << @operators[ @cx % @operators.length ] # first to increment. this position will change every time inc is called.   go to next char in @operators
    str << @numbers[8]
    str
  end

  def inc
    @cx += 1
  end

end
