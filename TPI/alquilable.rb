module Alquilable

    def calcular_precio(socio)
        precio = @precio
        p socio.categoria
        if socio.categoria == "VIP"
            precio = precio * 0.90
        end
        precio
    end

end
