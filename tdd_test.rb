require "minitest/autorun"
require_relative "tdd_pizza_app.rb"

class TestTddPizzaApp < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_for_hash
        assert_equal(Hash, get_order().class)
    end
end