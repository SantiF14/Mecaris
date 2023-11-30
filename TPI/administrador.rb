require 'csv'

class Administrador

    def consultar_precio(socio, pelicula)
        precio_final = pelicula.calcular_precio(socio)
        precio_final
    end


    def alquilar_pelicula(socio, pelicula)
        precio_final = pelicula.calcular_precio(socio)
        registro_alquiler(socio, pelicula, precio_final)
    end
    
    
    def registro_alquiler(socio, pelicula, precio_final)
        CSV.open('export.csv', 'a') do |csv|
            csv << [socio.nomYape, socio.categoria, pelicula.tipo, precio_final]
        end
    end

end