require "minitest/autorun"
require_relative "tdd_pizza_app.rb"

class TestTddPizzaApp < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_for_hash
        assert_equal(Hash, get_order().class)
    end

    def test_for_8_inch
        assert_equal(7.00, get_order()["8 inch"])
    end

    def test_for_16_inch
        assert_equal(10.00, get_order()["16 inch"])
    end

    def test_for_32_inch
        assert_equal(13.00, get_order()["32 inch"])
    end




    
end