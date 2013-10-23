require "lib/fraccion.rb"

describe Fraccion do
  before :each do
    @f1 = Fraccion.new(2,4)
  end  

  describe "# almacenamiento numerador y denominador" do
    it "Debe existir un numerador" do
      @f1.num.should eq(2)
    end
    it "Debe existir un denominador" do
      @f1.den.should eq(4)
    end
  end
  
  describe "# forma reducida" do
    it "Debe estar en su forma reducida" do
      f2 = @f1.reduccion
      f2.num.should eq(1)
      f2.den.should eq(2)
    end
  end
  
end