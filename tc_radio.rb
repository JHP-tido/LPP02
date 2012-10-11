require "./bin/radio"
require "test/unit"
 
class TestRadio < Test::Unit::TestCase
 
  def test_simple
    assert_in_delta(0.15923566, Radio.new(1).perim(),0.0005,"Diferentes")
    assert_in_delta(0.577707006, Radio.new(3).perim(),0.0005,"Diferentes")
  end
  
  def test_is_neg
    assert_raise(RuntimeError) {Radio.new(-1)}
  end

  def test_is_char
    assert_raise(RuntimeError)  {Radio.new('a')}
  end
  
  def test_failure
    assert_in_delta(0.47746, Radio.new(3).perim(),0.0005,"Son distintos")
  end
end



