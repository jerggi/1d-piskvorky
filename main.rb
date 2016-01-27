require './game.rb'

print 'Select players...h = Human/ c = Computer' + "\n"
print 'O player: '
o_player = gets.chomp
print 'X player: '
x_player = gets.chomp
game = Game.new o_player, x_player
game.start_game
