require_relative "soporte"
require_relative "alquilable"

class Pelicula < Soporte
    include Alquilable

    attr_accessor :precio

    def initialize(tipo, precio)
        super(tipo)
        @precio = precio
    end

end