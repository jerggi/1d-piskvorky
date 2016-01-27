class Player
  def play(board, stone)
    # board je hraci plocha - Array s 20 pozicemi
    # sign je 'x' nebo 'o'
    # vrati pozici 0 - 19, kam umisti svuj kamen
  end

  def valid(board, pos)
    pos_i = pos.to_i
    return false if pos_i < 0 || pos_i > 19 || pos != pos.to_i.to_s
    return true if board[pos_i].nil?
    false
  end
end
