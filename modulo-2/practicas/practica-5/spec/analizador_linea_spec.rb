require_relative "../practica_5"
require 'rspec'

describe AnalizadorLinea do
  subject(:lineAnalyzer) { AnalizadorLinea.new("test", 1) }

  it "tiene accessor para max_frec_count" do
    is_expected.to respond_to(:max_frec_count)
  end
  it "tiene accessor para max_frec_palabras" do
    is_expected.to respond_to(:max_frec_palabras)
  end
  it "tiene accessor para content" do
    is_expected.to respond_to(:content)
  end
  it "tiene accessor para numero_linea" do
    is_expected.to respond_to(:numero_linea)
  end
  it "tiene method calcular_frecuencia_palabras" do
    is_expected.to respond_to(:calcular_frecuencia_palabras)
  end
  context "atributos y valores" do
    it "tiene atributos content and numero_linea" do
      is_expected.to have_attributes(content: "test", numero_linea: 1)
    end
    it "content debe tener el valor \"test\"" do
      expect(lineAnalyzer.content).to eq("test")
    end
    it "numero_linea debe tener valor 1" do
      expect(lineAnalyzer.numero_linea).to eq(1)
    end
  end

  it "verifica la existencia calcular_frecuencia_palabras" do
    expect_any_instance_of(AnalizadorLinea).to receive(:calcular_frecuencia_palabras)
    AnalizadorLinea.new("", 1)
  end

  context "#calcular_frecuencia_palabras" do
    subject(:lineAnalyzer) { AnalizadorLinea.new("This is a really really really cool cool you you you", 2) }

    it "max_frec_count tiene valor 3" do
      expect(lineAnalyzer.max_frec_count).to eq(3)
    end
    it "max_frec_palabras incluye a \"really\" and \"you\"" do
      expect(lineAnalyzer.max_frec_palabras).to include 'really', 'you'
    end
    it "content tiene valor igual a \"This is a really really really cool cool you you you\"" do
      expect(lineAnalyzer.content).to eq("This is a really really really cool cool you you you")
    end
    it "numero_linea tiene valor igual a 2" do
      expect(lineAnalyzer.numero_linea).to eq(2)
    end
  end
end
