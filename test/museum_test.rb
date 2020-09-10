require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
require './lib/museum'

class MuseumTest < Minitest::Test
  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
    @gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    @dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    @imax = Exhibit.new({name: "IMAX",cost: 15})
  end

  def test_it_exists
    assert_instance_of Museum, @dmns
  end

  def test_it_has_a_name
    assert_equal "Denver Museum of Nature and Science", @dmns.name
  end

  def test_exhibits_start_empty
    assert_equal [], @dmns.exhibits
  end

  def test_it_can_add_exhibits
    @dmns.add_exhibit(@gems_and_minerals)
    @dmns.add_exhibit(@dead_sea_scrolls)
    @dmns.add_exhibit(@imax)

    expected = [@gems_and_minerals, @dead_sea_scrolls, @imax]
    assert_equal expected, @dmns.exhibits
  end
end


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
