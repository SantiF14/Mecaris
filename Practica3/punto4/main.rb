require_relative "players"
require_relative "game"
turn = 1
player1_moves = ["1","0","1","1","0","1","1","0","1","0"]
player2_moves = ["0","0","0","0","1","1","0","1","1","0"]
player1 = Player.new(player1_moves, "juan")
player2 = Player.new(player2_moves, "nuan")
game = Game.new



while turn <= 10 && player1.energy_left? && player2.energy_left? do
    game.playing_turn(player1,player2,turn-1)
    turn += 1
end

game.game_over(player1,player2)

