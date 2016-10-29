## Practica de programación del Módulo #2: Calcular la palabra con mayor frecuencia

El objetivo principal de la tarea es escribir una clase Ruby y trabajar con atributos, métodos, hashes, y arrays. 

El objetivo funcional de la tarea es leer un archivo de texto y encontrar la o las palabras que mas veces aparecen en cada linea del archivo. 
La forma en la que vamos a resolver el problema de "las palabras que aparecen mas" es: 
    1. Encontrando la palabra/s con mayor frecuencia en cada linea.
    2. Encontrando las líneas del texto que cuentan con las palabras repetidas el máximo número de veces, comparando las frecuencias encontradas entre todas las líneas. 
    
### Requermientos Funcionales

1. Escribir una clase llamada AnalizadorLinea que:
    - Almacene la ubicación de una línea de texto en el archivo
    - Analice una línea de texto
    - Encuentre la palabra que aparece con mayor frecuencia en su línea. 

2. Escribir una clase llamada Solución que:
    - lea el archivo provisto 'test.txt'
    - cree un array de AnalizadorLineas
    - seleccione aquellos cuya palabra con mayor frecuencia sea la mayor entre todos los AnalizadorLineas.
    - Imprima los resultados

### Getting Started

1. Implementar la solucion en practica_5.rb
    * practica_5.rb - tu solución debe estar ubicada en este archivo dividida en dos clases: AnalizadorLinea y Solution.
    * spec - este directorio contiene tests para verificar tu solución no deberías modificar nada aquí.
    * solution.rb - un script que podrías utilizar para correr tu clase Solution fuera del scope de los tests unitarios.
    * test.txt - este archivo contiene datos de prueba que tu solución va a leer y analizar.

2. Instalar la siguiente gema. (Probablemente ya la tengas.)

    ```shell
    $ gem install rspec
    $ gem install rspec-its
    ```

3. Ejecuta el comando rspec desde /modulo-2/practicas/practica-5 para ejecutar los tests unitarios incluidos dentro del directorio spec. Esto debería retornar algunas fallas hasta que completes tu solución en practica_5.rb

### Requerimientos Técnicos

1. Implementar todas las partes de la tarea en el archivo practica_5.rb. 

2. Implementar una clase llamada AnalizadorLinea con ese nombre exactamente.

3. Implementar los siguientes atributos read-only en la clase AnalizadorLinea:
    * max_frec_count - el numero que representa el máximo número de ocurrencias(repeticiones) para una sola palabra. 
    * max_frec_palabras - un array de palabras con el máximo número de ocurrencias (calculado)
    * content          - el string que está siendo analizado(provisto)
    * numero_linea      - la línea del archivo que está siendo analizada(provisto)

4. Agregar los siguientes métodos a la clase AnalizadorLinea. 
    * initialize() - recibe una línea de texto (content) y un número de linea (numero_linea)
    * calcular_frecuencia_palabras() - calcula el resultado y lo almacena en los atributos.

5. Implementar el método initialize() para que:
    * Reciba una línea de texto y un número de línea.
    * Inicialize los atributos: content y numero_linea
    * Llame al método calcular_frecuencia_palabras().

6. Implementar el método calcular_frecuencia_palabras() para que:
    * Calcule el máximo número de veces que aparece una palabra en el content provisto y almacenelo en el atributo max_frec_count.
    * Identifique las palabras que fueron utilizadas el maximo número de veces y almacenelo en el atributo max_frec_palabras.
7. Implementar una clase llamada Solution. 

8. Implementar los siguientes atributos de solo lectura en la clase Solution:
    * analizadores - un array que va a contener un AnalizadorLinea por cada línea del archivo de texto de entrada.
    * max_count_across_lines - un número con el valor de la máxima frecuencia entre todos los analizadores.
    * max_count_palabras_across_lines - un array de AnalizadorLineas con las palabras con mayor frecuencia. 

9. Implementar los siguientes métodos en la clase Solution. 
    * initialize() - inicializa el array que va a contener los analizadores por cada linea del archivo.
    * analizar_archivo() - procesa el archivo test.txt en un array de AnalizadorLineas. 
    * calcular_linea_mayor_frecuencia() - determina qué lineas del texto tienen el máximo número de ocurrencia de una palabra. 
    * print_palabras_mayor_frecuencia() - imprime la palabra/s con el máximo número de ocurrencias y su correspondiente número de línea. 

10. Implementar el método Initialize() para que:
    * Inicialize analizadores como un array vacío.

11. Implementar analyze_file() para que:
    * Lea el archivo test.txt en lineas. 
    * Cree un array de AnalizadorLineas por cada línea en el archivo.

12. Implementar el método calcular_linea_mayor_frecuencia() para que:
    * Calcule el máximo valor para los max_frec_count contenidos por los objetos AnalizadorLinea en el array analizadores y almacene su resultado en el atributo max_count_across_lines.
    * Identifique el objeto AnalizadorLinea en el array analizadores que tiene el max_frec_count igual al max_count_across_lines (calculado en el paso anterior) y lo almacene en el atributo max_count_palabras_across_lines.

13. Implementar el método print_palabras_mayor_frecuencia() para que: 
    * Imprima el resultado en el siguiente formato:

    ```text
    Las siguientes palabras tienen la máxima frecuencia en el texto, y aparecen en las líneas:
        [on] (aparece en la línea 2)
        [a] (aparece en la línea 2)
        [ruby] (aparece en la línea 3)
        [rails] (aparece en la línea 4)
    ```

### Self Grading/Feedback

Podrías autoevaluarte calculando el resultado de un simple archivo de texto provisto y utilizando los tests unitarios rspec. Cuando la solución esté completa exitósamente, el test rspec va a funcionar y se verá como sigue:
```shell
$ rspec

Finished in 0.02748 seconds (files took 0.16322 seconds to load)
19 examples, 0 failures
```

### Submission
Subir a sus repositorios de github en modulo-2/practicas/practica-5 los archivos practica_5.rb y solution.rb.
