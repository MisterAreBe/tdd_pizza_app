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

    def test_for_veggie_is_array
        assert_equal(Array, get_veggie().class)
    end

    def test_for_veggie_value
        assert_equal("Onions", get_veggie()[0])
    end

    def test_for_sauce_is_array
        assert_equal(Array, get_sauce().class)
    end

    def test_for_sauce_value
        assert_equal("Marinara", get_sauce()[0])
    end

    def test_for_crust_is_array
        assert_equal(Array, get_crust().class)
    end

    def test_for_crust_value
        assert_equal("Pan", get_crust()[0])
    end

    def test_for_8_inch_pizza
        assert_equal(7.00 , make_pizza("8 inch"))
    end


end