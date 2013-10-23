require "lib/fraccion.rb"

describe Fraccion do
  before :each do
    @f = Fraccion.new(2,4)
  end  
end

describe "# almacenamiento numerador y denominador" do
  it "Debe existir un numerador" do
    @f.num.should eq(2)
  end
  it "Debe existir un denominador" do
    @f.den.should eq(4)
  end
end