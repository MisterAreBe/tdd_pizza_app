require "minitest/autorun"
require_relative "tdd_pizza_app.rb"

class TestTddPizzaApp < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_for_hash
        assert_equal(Hash, get_size().class)
    end

    def test_for_8_inch
        assert_equal(7.00, get_size()["8 inch"])
    end

    def test_for_16_inch
        assert_equal(10.00, get_size()["16 inch"])
    end

    def test_for_32_inch
        assert_equal(13.00, get_size()["32 inch"])
    end

    def test_for_meat_is_array
        assert_equal(Array, get_meat().class)
    end

    def test_for_meat_value
        assert_equal("Pepperoni", get_meat()[0])
    end

    def test_for_veggie_value
        assert_equal("Onions", get_veggie()[0])
    end

    

end