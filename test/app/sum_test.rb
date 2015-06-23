require_relative '../test_helper'

describe Sum do

  it 'test setup' do
    s = Sum.new
    assert_equal %w[1 2 3 4 5 6 7 8 9], s.numbers
    assert_equal ['+', '-', ''], s.operators
  end

  it '#to_s for starting setup (add everything)' do
    s = Sum.new
    assert_equal "1+2+3+4+5+6+7+8+9", s.to_s
  end

  it 'evaluates starting setup (add everything)' do
    s = Sum.new
    assert_equal 45, s.ev
  end



end
