require_relative '../test_helper'

describe Sum do

  let(:sum) { Sum.new }

  it 'test setup' do
    assert_equal %w[1 2 3 4 5 6 7 8 9], sum.numbers
    assert_equal ['+', '-', ''], sum.operators
  end

  it '#to_s for starting setup (add everything)' do
    assert_equal "1+2+3+4+5+6+7+8+9", sum.to_s
  end

  it 'evaluates starting setup (add everything)' do
    assert_equal 45, sum.ev
  end

  it 'inc counter for second case' do
    sum.inc
    assert_equal '1+2+3+4+5+6+7+8-9', sum.to_s
  end

  it 'inc counter for third case' do
    2.times {sum.inc}
    assert_equal '1+2+3+4+5+6+7+89', sum.to_s
  end

  it 'inc counter for fourth case' do
    3.times {sum.inc}
    assert_equal '1+2+3+4+5+6+7-8+9', sum.to_s
  end

  it 'inc counter for 5 case' do
    4.times {sum.inc}
    assert_equal '1+2+3+4+5+6+7-8-9', sum.to_s
  end

  it 'inc counter for 6 case' do
    5.times {sum.inc}
    assert_equal '1+2+3+4+5+6+7-89', sum.to_s
  end

  it 'inc counter for 7 case' do
    6.times {sum.inc}
    assert_equal '1+2+3+4+5+6+78+9', sum.to_s
  end

  it 'inc counter for 8 case' do
    7.times {sum.inc}
    assert_equal '1+2+3+4+5+6+78-9', sum.to_s
  end

  it 'inc counter for 9 case' do
    8.times {sum.inc}
    assert_equal '1+2+3+4+5+6+789', sum.to_s
  end

  it 'inc counter for 10 case' do
    9.times {sum.inc}
    assert_equal '1+2+3+4+5+6-7+8+9', sum.to_s
  end


  it 'evals for solutions for equality' do
    solutions =  sum.eval_for(100)
    solutions.each do |sol|
      ap sol
      assert_equal 100, eval(sol)
    end
  end


end
