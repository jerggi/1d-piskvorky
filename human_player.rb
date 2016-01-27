require './player.rb'

class HumanPlayer < Player
  def play(board, stone)
    # board je hraci plocha - Array s 20 pozicemi
    # sign je 'x' nebo 'o'    print 'som human'
    puts stone.upcase + ' player turn'
    loop do
      pos = gets.chomp
      if valid board, pos
        puts stone.upcase + ' player hit position ' + pos
        return pos.to_i
      end
      puts 'Given position is not valid!'
    end
    # vrati pozici 0 - 19, kam umisti svuj kamen
  end
end
