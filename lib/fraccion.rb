require "gcd.rb"
#require "Comparable.rb"

class Fraccion
  
  include Comparable
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
  
  =begin
  def ==(other)
    f1 = reduccion
    f2 = other.reduccion
    if ((f1.num == other.num) && (f1.den == other.den))
      true
    else
      false
    end
  end
  =end
  
  def abs
    n = @num.abs
    d = @den.abs
    fracc = Fraccion.new(n, d)
    fracc
  end
  
  def reciprocal
    fracc2 = Fraccion.new(@den, @num)
    fracc2
  end
  
  def -@
    fracc2 = Fraccion.new(-@num, @den)
    fracc2
  end
  
  def +(other)
    den = @den * other.den
    num = ((den/@den)*@num) + ((den/other.den)*other.num)
    mcd = gcd(num, den)
    sum = Fraccion.new(num/mcd, den/mcd)
    sum
  end
  
  def -(other)
    den = @den * other.den
    num = ((den/@den)*@num) - ((den/other.den)*other.num)
    mcd = gcd(num, den)
    res = Fraccion.new(num/mcd, den/mcd)
    res
  end
    
  def *(other)
    num = @num * other.num
    den = @den * other.den
    mcd = gcd(num, den)
    mult = Fraccion.new(num/mcd, den/mcd)
    mult
  end

  def div(other) # def /(other) Funciona
    num = @num * other.den
    den = @den * other.num
    mcd = gcd(num, den)
    div = Fraccion.new(num/mcd, den/mcd)
  end
  
  def % (other)
    f2 = Fraccion.new(0, 1)
    f2
  end
  
  def <=>(other)
    raise TypeError "other no es del tipo Fraccion"
    unless other.instance_of?Fraccion
    (@num/@den) <=> (other.num/other.den)
  end
  
end