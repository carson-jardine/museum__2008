require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
require './lib/museum'

class MuseumTest < Minitest::Test
  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
  end

  def test_it_exists
    assert_instance_of Museum, @dmns
  end

end
# => #<Museum:0x00007fb400a6b0b0...>

# @dmns.name
# => "Denver Museum of Nature and Science"

# @dmns.exhibits
# => []

# @gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
# => #<Exhibit:0x00007fb400bbcdd8...>

# @dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
# => #<Exhibit:0x00007fb400b851f8...>

# @imax = Exhibit.new({name: "IMAX",cost: 15})
# => #<Exhibit:0x00007fb400acc590...>

# @dmns.add_exhibit(gems_and_minerals)

# @dmns.add_exhibit(dead_sea_scrolls)

# @dmns.add_exhibit(imax)

# @dmns.exhibits
# => [#<Exhibit:0x00007fb400bbcdd8...>, #<Exhibit:0x00007fb400b851f8...>, #<Exhibit:0x00007fb400acc590...>]

# @patron_1 = Patron.new("Bob", 20)
# => #<Patron:0x00007fb400a51cc8...>

# @patron_1.add_interest("Dead Sea Scrolls")

# @patron_1.add_interest("Gems and Minerals")

# @patron_2 = Patron.new("Sally", 20)
# => #<Patron:0x00007fb400036338...>

# @patron_2.add_interest("IMAX")

# @dmns.recommend_exhibits(patron_1)
# => [#<Exhibit:0x00007fb400bbcdd8...>, #<Exhibit:0x00007fb400b851f8...>]

# @dmns.recommend_exhibits(patron_2)
# => [#<Exhibit:0x00007fb400acc590...>]