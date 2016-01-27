require './player.rb'

class ComputerPlayer < Player
  def play(board, stone)
    # board je hraci plocha - Array s 20 pozicemi
    # sign je 'x' nebo 'o'
    # vrati pozici 0 - 19, kam umisti svuj kamen
    i = 0
    free_positions = []
    while i < 20
      free_positions.push(i) if board[i].nil?
      i += 1
    end
    pos_index = Random.new.rand(0..free_positions.size - 1)

    puts stone.upcase + ' player hit position ' + free_positions[pos_index].to_s
    free_positions[pos_index]
  end
end
