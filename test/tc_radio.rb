require "./bin/radio"
require "test/unit"
 
class TestRadio < Test::Unit::TestCase
 
  def test_simple
    assert_in_delta(0.795774716, Radio.new(5).perim(),0.005,"Diferentes")
    assert_in_delta(1.591549431, Radio.new(10).perim(),0.005,"Diferentes")
  end
  
  def test_is_neg
    assert_raise(RuntimeError) {Radio.new(-1)}
  end

  def test_is_char
    assert_raise(RuntimeError)  {Radio.new('a')}
  end
  
  def test_failure
    assert_in_delta(0.66666, Radio.new(5).perim(),0.0005,"Diferentes")
  end
end



