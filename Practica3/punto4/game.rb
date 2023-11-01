class Game

    def initialize
    
    end

    def playing_turn(player1, player2, turn)
        moves = "#{player1.movements[turn]}" + "#{player2.movements[turn]}"
        case moves
        when "00"
            
        when "10"
            player1.energy -= 10
        when "01"
            player2.energy -= 10
        when "11"
            player1_energy = player1.energy
            player1.energy -= (player2.energy * 0.2)
            player2.energy -= (player1_energy * 0.2)
        end
    end

    def game_over(player1,player2)
        if !player1.energy_left? 
            p "gana el jugador 2"
        elsif !player2.energy_left?
            p "gana el jugador 1"
        elsif player1.energy > player2.energy
            p "gana el jugador 1"
        else
            p "gana el jugador 2"
        end 
    end
end