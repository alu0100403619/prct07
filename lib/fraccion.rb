require "gcd.rb"

class Fraccion
  
  attr_reader :num, :den
  
  def initialize (num, den)
    @num, @den = num, den
  end
  
  def reduccion
    divisor = gcd(@num, @den)
    fracc2 = Fraccion.new(@num/divisor, @den/divisor)
    fracc2
  end
  
  def to_s
    "#{@num}/#{@den}"
  end
  
  def to_f
    (@num/@den.to_f)
  end
  
  def ==(other)
    f1 = reduccion
    f2 = other.reduccion
    if ((f1.num == other.num) && (f1.den == other.den))
      true
    else
      false
    end
  end
  
end