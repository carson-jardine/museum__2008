require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'

class PatronTest < Minitest::Test
  def setup
    @patron_1 = Patron.new("Bob", 20)
  end

  def test_it_exists
    assert_instance_of Patron, @patron_1
  end

end
# => #<Patron:0x00007fcb13b5c7d8...>

# @patron_1.name
# => "Bob"

# @patron_1.spending_money
# => 20

# @patron_1.interests
# => []

# @patron_1.add_interest("Dead Sea Scrolls")

# @patron_1.add_interest("Gems and Minerals")

# @patron_1.interests
# => ["Dead Sea Scrolls", "Gems and Minerals"]
