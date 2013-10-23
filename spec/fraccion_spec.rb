require "lib/fraccion.rb"

describe Fraccion do
  before :each do
    @f1 = Fraccion.new(2,4)
  end  

  describe "# almacenamiento numerador y denominador" do
    it "Debe existir un numerador" do
      @f1.num.should eq(2) #accede a num(), igual a se debe invocar al metodo num() para obtener el numerador
    end
    it "Debe existir un denominador" do
      @f1.den.should eq(4) #accede a den (),igual a se debe invocar al metodo denom() para obtener el denominador
    end
  end
  
  describe "# forma reducida" do
    it "Debe estar en su forma reducida" do
      f2 = @f1.reduccion
      f2.num.should eq(1)
      f2.den.should eq(2)
    end
  end
  
  describe "# mostrar" do
    it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
      @f1.to_s.should eq("2/4")
    end
    it "Se debe mostar por la consola la fraccion en formato flotante" do
      @f1.to_f.should eq(0.5)
    end
  end
  
  describe "# Comparacion de fracciones" do
    it "Se debe comparar si dos fracciones son iguales con ==" do
      f2 = Fraccion.new(1, 2)
      (@f1 == f2).should eq(true)
    end
  end
  
  describe "# Absoluto" do
    it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
      f2 = Fraccion.new(-1, 2)
      f2 = f2.abs
      f2.num.should eq(1)
      f2.den.should eq(2)
    end
  end
  
end