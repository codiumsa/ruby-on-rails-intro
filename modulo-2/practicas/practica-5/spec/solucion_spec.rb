require_relative "../practica_5"
require 'rspec'
require 'rspec/its'

describe Solution do
  subject(:solution) { Solution.new }

  it { is_expected.to respond_to(:analizar_archivo) }
  it { is_expected.to respond_to(:calcular_linea_mayor_frecuencia) }
  it { is_expected.to respond_to(:print_palabras_mayor_frecuencia) }

  context "#analizar_archivo" do
    it "Se crean 4 analizadores" do
      expect(solution.analizadores.length).to eq 0
      solution.analizar_archivo
      expect(solution.analizadores.length).to eq 4
    end
  end

  context "#calcular_linea_mayor_frecuencia" do


    it "Calcula la máxima frecuencia entre líneas y debe ser 5" do
      solution.analizar_archivo

      expect(solution.max_count_across_lines).to be nil

      solution.calcular_linea_mayor_frecuencia

      expect(solution.max_count_across_lines).to be 5
    end
    it "Calcula que las palabras con mayor frecuencia entre las líneas son: on, a, ruby, rails" do
      solution.analizar_archivo

      expect(solution.max_count_palabras_across_lines).to be nil

      solution.calcular_linea_mayor_frecuencia

      words_found = solution.max_count_palabras_across_lines.map(&:max_frec_palabras).flatten
      expect(words_found).to match_array ["on", "a", "ruby", "rails"]
    end
  end

end
