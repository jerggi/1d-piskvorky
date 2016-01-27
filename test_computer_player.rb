require 'test/unit'
require './computer_player.rb'

class TestComputerPlayer < Test::Unit::TestCase
  def test_play
    player = ComputerPlayer.new
    board = [
      nil, nil, 'o', 'o', 'x', 'x', 'o', 'o', 'x', 'x', 'o', 'o', 'x',
      'x', 'o', 'o', 'x', 'x', 'o'
    ]
    i = 1
    hit_empty = false
    while i < 10
      pos = player.play(board, 'x')
      hit_empty = true if pos == 0 || pos == 1 || pos == 19
      assert_true hit_empty
      i += 1
    end
  end
end
