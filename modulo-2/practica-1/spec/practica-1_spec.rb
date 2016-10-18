require 'rspec'
require 'rspec/its'

describe "lesson1" do

  context "check results" do
    result=`ruby case_work.rb`.chomp!

    it "Salida inesperada" do
      expect(result).to eq("Nada se ejecutó? Por que?")
    end
  end

  context "Verificación de implementación" do
    srcCode = File.open("case_work.rb", "r").read

    it "Eliminar sentencia if" do
      expect(srcCode).not_to include("if")
    end

    it "Eliminar sentencia if" do
      expect(srcCode).not_to include("elsif")
    end

    it "Eliminar sentencia elsif" do
      expect(srcCode).not_to include("elsif")
    end

    it "No existe case" do
      expect(srcCode).to include("case")
    end
  end
end
