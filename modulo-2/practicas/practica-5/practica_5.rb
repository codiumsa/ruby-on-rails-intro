class AnalizadorLinea

  def initialize(line, number)
    #inicializar contet, numero_linea, max_frec_palabras
    #invocar a calcular_frecuencia_palabras (metodo de instancia)
  end

  def calcular_frecuencia_palabras()
    #Por cada palabra que aparece en la linea (content) calcular la cantidad de veces que se repite

    #Ver la maxima frecuencias
    #Almacenar en @max_frec_count

    #Ademas calcular en @max_frec_palabras las que se repiten el nro. máximo entre las frecuencias.
  end

end


class Solution

  def initialize()
    #Inicializar variables: analizadores, max_count_across_lines, max_count_palabras_across_lines
  end

  def analizar_archivo()
    #leer el archivo test.txt linea por linea
    #crear analizadores de linea
  end

  def calcular_linea_mayor_frecuencia()
    #recorrer los analizadores de línea y buscar cual es el máximo max_frec_count
    #identificar cuales son las líneas que cuentan con palabras repetidas el máximo nro. de veces.
    #cargar las líneas en la variable @max_count_palabras_across_lines
  end
  def print_palabras_mayor_frecuencia()
    #recorrer @max_count_palabras_across_lines (que tiene analizadores, y los analizadores palabras)
    #puts "#{palabra} (aparece en la línea #{analizador.numero_linea})"
  end
end
