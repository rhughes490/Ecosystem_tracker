require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi")
    @fish1 = Fish.new("John")
    @fish2 = Fish.new("Mary")
    @fish3 = Fish.new("Bob")
  end

  def test_can_create_bear()
    assert_equal(Bear, @bear.class())
  end

  def test_bear_name()
    assert_equal("Yogi", @bear.name())
  end

   def test_bear_starts_with_empty_stomach()
     assert_equal(0, @bear.ate_fish_count())
   end

   def test_add_ate_fish()
     @bear.eat_fish(@fish1)
     assert_equal(1, @bear.ate_fish_count())
   end


end