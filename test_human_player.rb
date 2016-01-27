require 'test/unit'
require './human_player.rb'

class TestHumanPlayer < Test::Unit::TestCase
  def test_valid
    player = HumanPlayer.new
    board = ['x', nil, nil, 'o', 'x']
    assert_equal(false, player.valid(board, '-1'))
    assert_equal(true, player.valid(board, '1'))
    assert_equal(true, player.valid(board, '2'))
    assert_equal(true, player.valid(board, '10'))
    assert_equal(false, player.valid(board, '4'))
    assert_equal(false, player.valid(board, '5000'))
    assert_equal(false, player.valid(board, 'asdf9'))
  end
end
