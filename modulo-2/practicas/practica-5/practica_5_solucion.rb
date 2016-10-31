class AnalizadorLinea

  attr_reader :max_frec_count, :max_frec_palabras, :content, :numero_linea

  def initialize(line, number)
    @content = line
    @numero_linea = number
    @max_frec_palabras = []
    self.calcular_frecuencia_palabras
  end

  def calcular_frecuencia_palabras()
    frecuencia = Hash.new(0)

    @content.split.each do |palabra|
      frecuencia[palabra.downcase] += 1
    end
    @max_frec_count = frecuencia.values.max

    frecuencia.each do |k,v|
      @max_frec_palabras << k if @max_frec_count == v
    end
  end

end

class Solution
  attr_reader :analizadores, :max_count_across_lines, :max_count_palabras_across_lines
  def initialize()
    @analizadores = []
    @max_count_across_lines = nil
    @max_count_palabras_across_lines = nil
  end

  def analizar_archivo()
    number = 0
    File.foreach('test.txt') do |linea|
      @analizadores << AnalizadorLinea.new(linea.chomp, number+=1)
    end
  end


  def calcular_linea_mayor_frecuencia()
    maximo = @analizadores.max_by do |element|
      element.max_frec_count
    end
    p maximo
    @max_count_across_lines = maximo.max_frec_count
    @max_count_palabras_across_lines = []
    @analizadores.each do |analizador|
      @max_count_palabras_across_lines << analizador if analizador.max_frec_count == @max_count_across_lines
    end
  end

  def print_palabras_mayor_frecuencia()
    puts "Las siguientes palabras tienen la máxima frecuencia en el texto, y aparecen en las líneas:"
    @max_count_palabras_across_lines.each do |analizador|
      analizador.max_frec_palabras.each do |palabra|
        puts "[#{palabra}] (aparece en la línea #{analizador.numero_linea})"
      end
    end
  end
end
