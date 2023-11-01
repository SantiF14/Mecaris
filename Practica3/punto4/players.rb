
class Player 
    attr_accessor :movements, :energy, :name

    def initialize(list, name)
        @name = name
        @movements = list
        @energy = 100
    end

    def energy_left?
        @energy >= 0 
    end

end