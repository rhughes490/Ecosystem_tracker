require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup()

    @fish1 = Fish.new("John")
    @fish2 = Fish.new("Mary")
    @fish3 = Fish.new("Bob")

    @stock = [@fish1, @fish2, @fish3]

    @river = River.new("Amazon", @stock)
  end

  def test_can_create_river()
    assert_equal(River, @river.class())
  end

  def test_river_stock_count()
    assert_equal(3, @river.stock_count())
  end

  def test_supply_fish()
    @river.supply_fish(@fish1)
    assert_equal(2, @river.stock_count())
  end

end