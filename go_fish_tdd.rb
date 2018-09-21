require "minitest/autorun"
require_relative 'go_fish.rb'

class Minitest::Test
  def test_for_array
    card = Card.new(7, "S")
    assert_equal(7, card.rank)
    assert_equal("S", card.suit)
  end
end
