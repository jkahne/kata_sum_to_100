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
    # inc every 3*3*3*3*3*3*3
    str << @operators[idx(7)]
    str << @numbers[1]
    # inc every 3*3*3*3*3*3
    str << @operators[idx(6)]
    str << @numbers[2]
    # inc every 3*3*3*3*3
    str << @operators[idx(5)]
    str << @numbers[3]
    # inc every 3*3*3*3
    str << @operators[idx(4)]
    str << @numbers[4]
    # inc every 3*3*3
    str << @operators[idx(3)]

    str << @numbers[5]
    # should inc once every time the final position goes through all operations 
    # times the next-to-final operation going through all operations
    # for operations ['+', '-', ''], that's 3*3
    str << @operators[idx(2)]
    str << @numbers[6]
    # should inc once for every time the final operation goes through all operations
    # should increment when counter is 3, 6, 9, etc
    #
    # this blows up once cx is 9.  need to cap it at @operators.length
    # need to cap others as well. 
    str << @operators[idx(1)]
    str << @numbers[7]
    # first to increment. this position will change every time inc is called.   
    # go to next char in @operators
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
