require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'

class ExhibitTest < Minitest::Test
  def setup
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
  end

  def test_it_exists
    assert_instance_of Exhibit, @exhibit
  end
end

# => #<Exhibit:0x00007fcb13bd22d0...>

# @exhibit.name
# => "Gems and Minerals"

# @exhibit.cost
# => 0

# @patron_1 = Patron.new("Bob", 20)
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
