require 'rspec'
require 'rspec/its'

describe "Leccion 2" do

  context "VERIFICACIÓN ARRAY DE SALIDA" do
    result = `ruby random_numbers.rb`
    lines = result.split("\n")
    numbers = []

    # process the last line of output
    values = lines[lines.count-1].split(",").each { |v|
      number = /([0-9]+)/.match(v).to_s.to_i
      numbers << number
    }

    #it "Se espera que se hayan impreso 6 lineas" do
    #  expect(lines.size).to be == 6
    #end

    it "No debe contener ningún número menor a 5000 " do
      numbers.each { |n|
        expect(n).to be >= 5000
      }
    end

    it "Se espera que esté ordenado en orden descendente" do
      expect(numbers).to eq numbers.sort.reverse
    end

    it "No debe contener números que no sean divisibles por 3" do
      numbers.each do |n|
        expect(n % 3).to be == 0
      end
    end
  end

  context "VERIFICACIÓN IMPLEMENTACIÓN" do
    src_code = File.open("random_numbers.rb", "r").read

    it "debe utilizar la sentencia select" do
      expect(src_code).to include("select")
    end

    it "debe utilizar la sentencia reject" do
      expect(src_code).to include("reject")
    end

    it "debe utilizar la sentencia sort" do
      expect(src_code).to include("sort")
    end

    it "debe utilizar la sentencia reverse" do
      expect(src_code).to include("reverse")
    end
  end
end
