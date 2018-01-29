def read_alum(file_name)
 file = File.open(file_name, 'r')
 alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
 file.close
 alum
end

# Este método recibe el nombre del archivo a leer y genera un array llamado "alum" con el
# contenido separado por lineas y comas.

alum = read_alum("archivo.csv")
# alum2 = [alum[0].to_sym]
puts
# print alum
puts
puts


#
# Crear un menú con 4 opciones:
# Se debe validar, en caso que se ingrese otra opción, que la opción escogida sea 1, 2, 3, o 4.
#  Por ende, si se ingresa cualquier otra opción el programa debe mostrar que la opción es
#  inválida, mostrar nuevamente el menú y la posibilidad de volver a ingresar una opción

opcion = 0
while opcion !=4
  puts puts
  puts 'escoja las siguientes opciones: '
  puts
  puts 'digite 1 para "Imprimir en pantalla el nombre de cada alumno y el promedio de sus notas"'
  puts 'digite 2 para "Contar la cantidad de inasistencias totales y mostrarlas en pantalla"'
  puts 'digite 3 para "Nombres de los alumnos aprobados"'
  puts 'digite 4 para "Terminar el programa"'
  puts
  puts 'digite su opcion: '
  opcion = gets.chomp.to_i
  puts

  case opcion
  when 1
    h = {}
    alum = read_alum("archivo.csv")
    alum.each do |nombre|
      key = nombre.first
      nombre.shift
      h[key] = nombre
    end
      # print h
      puts
      # print h["David"]
      puts

    # acumulador = 0
      h.each do |key, value|
        acumulador = 0
        h[key].each do |notas|
          acumulador = acumulador + notas.to_i
        end

        promedio = acumulador / h[key].length.to_f

        puts
        puts "#{key} tiene un promedio de #{promedio}"
      end
      puts


  when 2
    h = {}
    alum = read_alum("archivo.csv")
    alum.each do |nombre|
      key = nombre.first
      nombre.shift
      h[key] = nombre
    end
    puts

    h.each do |nombre, notas|
      # print notas.count("A")
      puts "#{nombre} tiene #{notas.count("A")} inasistencias"
  end


  when 3
  #   def aprobado (var)
  #     total = var.inject(0) {|sum, value| sum + value}
  # total.to_f/var.length
  #   end

    # puts aprobado(h)
    # puts
    # puts no pude hacerlo
    break







  when 4
    puts '"PROGRAMA TERMINADO"'
    puts puts

  else
    puts 'OPCION INVALIDA - INGRESA OPCION VALIDA'
    puts
  end
end
