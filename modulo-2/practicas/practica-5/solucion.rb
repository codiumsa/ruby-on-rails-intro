require_relative "practica_5"

# This script provides a sample execution of the Solution class
# that is consistent with what the rspec evaluation will perform.
# You may use it to sanity check your actual solution along side
# the rspec tests.

solution = Solution.new
#expect errors until you implement these methods
solution.analizar_archivo
solution.calcular_linea_mayor_frecuencia
solution.print_palabras_mayor_frecuencia
