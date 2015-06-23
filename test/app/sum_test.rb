require_relative '../test_helper'

describe Sum do

  it 'test setup' do
    s = Sum.new
    assert_equal %w[1 2 3 4 5 6 7 8 9], s.numbers
    assert_equal ['+', '-', ''], s.operators
  end

end
