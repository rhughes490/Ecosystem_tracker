require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../fish")

class FishTest < MiniTest::Test

    def setup()
        @new_fish = Fish.new("Fred")
    end

    def test_can_create_fish()
        assert_equal(Fish, @new_fish.class())
      end

    def test_fish_name()
        assert_equal("Fred", @new_fish.name())
    end

end
