require 'test/unit'
require './game.rb'

class TestGame < Test::Unit::TestCase
  def test_win
    game = Game.new 'h', 'h'
    game.board = ['x', nil, nil, nil, nil, 'o', 'o', 'o', 'x']
    assert_equal('o', game.win)
    game.board = ['x', nil, nil, nil, nil, 'x', 'x', 'o', 'x', 'x', 'o', 'o']
    assert_nil(game.win)
    game.board = ['o', nil, nil, 'x', 'x', 'x', 'x']
    assert_equal('x', game.win)
  end

  def test_board_full
    game = Game.new 'h', 'h'
    game.board_size = 5
    game.board = [nil, 'x', 'x', 'o', 'x']
    assert_equal(false, game.board_full)
    game.board = %w(x, x, x, o, x)
    assert game.board_full
  end
end
