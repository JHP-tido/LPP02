# File: radio.rb

class Radio
 
  def initialize(num)
    raise ArgumentError, 'El argumento no es numerico' unless num.is_a? Numeric
    raise ArgumentError, 'El argumento no es un numero positivo' unless (num > 0)
# raise ArgumentError, 'El argumento es numerico negativo' unless x.is_a? Numeric
# raise unless num.is_a?(negativo)
    @x = num
  end
 
  def perim()
    ((@x)/(2*(Math::PI)))
  end
 
end



