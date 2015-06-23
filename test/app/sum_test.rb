require_relative '../test_helper'

describe Sum do

  let(:s) { Sum.new }

  it 'test setup' do
    assert_equal %w[1 2 3 4 5 6 7 8 9], s.numbers
    assert_equal ['+', '-', ''], s.operators
  end

  it '#to_s for starting setup (add everything)' do
    assert_equal "1+2+3+4+5+6+7+8+9", s.to_s
  end

  it 'evaluates starting setup (add everything)' do
    assert_equal 45, s.ev
  end

  it 'inc counter for second case' do
    s.inc
    assert_equal '1+2+3+4+5+6+7+8-9', s.to_s
  end

  it 'inc counter for third case' do
    2.times {s.inc}
    assert_equal '1+2+3+4+5+6+7+89', s.to_s
  end

  it 'inc counter for fourth case' do
    3.times {s.inc}
    assert_equal '1+2+3+4+5+6+7-8+9', s.to_s
  end

  it 'inc counter for 5 case' do
    4.times {s.inc}
    assert_equal '1+2+3+4+5+6+7-8-9', s.to_s
  end

  it 'inc counter for 6 case' do
    5.times {s.inc}
    assert_equal '1+2+3+4+5+6+7-89', s.to_s
  end

  it 'inc counter for 7 case' do
    6.times {s.inc}
    assert_equal '1+2+3+4+5+6+78+9', s.to_s
  end



end
