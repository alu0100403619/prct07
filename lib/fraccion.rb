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
  
end