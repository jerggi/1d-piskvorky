require './player.rb'
require './computer_player.rb'
require './human_player.rb'

class Game
  attr_accessor :o_player, :x_player, :board, :board_size
  def initialize(o_player, x_player)
    if o_player == 'h'
      @o_player = HumanPlayer.new
    else
      @o_player = ComputerPlayer.new
    end
    if x_player == 'h'
      @x_player = HumanPlayer.new
    else
      @x_player = ComputerPlayer.new
    end
    @game_over = false
    @board = []
    @board_size = 20
  end

  def start_game
    winner = nil
    print_board
    loop do
      pos = @o_player.play @board, 'o'
      @board[pos] = 'o'
      print_board
      winner = win
      break if !winner.nil? || board_full

      pos = @x_player.play @board, 'x'
      @board[pos] = 'x'
      print_board
      winner = win

      break if !winner.nil? || board_full
    end
    print_game_result winner
  end

  def win
    i = 1
    same_count = 1
    same_type = @board[0]
    while i < @board_size
      if same_type == @board[i] && !same_type.nil?
        same_count += 1
      else
        same_type = @board[i]
        same_count = 1
      end
      return same_type if same_count == 3
      i += 1
    end
    nil
  end

  def board_full
    i = 0
    while i < @board_size
      return false if @board[i].nil?
      i += 1
    end
    true
  end

  def print_board
    i = 0
    field = ''
    while i < @board_size
      if @board[i].nil?
        field += i.to_s + ':_, '
      else
        field += i.to_s + ':' + @board[i].upcase + ', '
      end
      i += 1
    end
    print field + "\n"
  end

  def print_game_result(winner)
    if !winner.nil?
      puts 'Winner is player ' + winner.upcase
    else
      puts 'Both of you are fantastic!'
    end
  end
end
