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
        assert_equal(7.00 , make_pizza("8 inch", [], [], [], []))
    end

    def test_for_other_size_pizza
        assert_equal(10.00, make_pizza("16 inch", [], [], [], []))
        assert_equal(13.00, make_pizza("32 inch", [], [], [], []))
    end

    def test_meat_class_array
        assert_equal(Array, get_meat().class)
    end

    def test_8_inch_pepperoni_pizza
        assert_equal(7.50, make_pizza("8 inch", [0], [], [], []))
    end

    def test_16_inch_bacon_ham_pizza
        assert_equal(11.00, make_pizza("16 inch", [2, 3], [], [], []))
    end

    def test_32_inch_onions_pizza
        assert_equal(13.25, make_pizza("32 inch", [], [0], [], []))
    end

    def test_16_inch_banna_peppers_pepperoni_mushrooms_bacon_pizza
        assert_equal(11.50, make_pizza("16 inch", [0, 2], [1, 3], [], []))
    end

    def test_8_inch_garlic_butter_pizza
        assert_equal(7.10, make_pizza("8 inch", [], [], [2], []))
    end

    def test_32_inch_barbecue_bacon_banna_peppers_pizza
        assert_equal(13.85, make_pizza("32 inch", [2], [1], [1], []))
    end

    def test_16_inch_pepperoni_onions_marinara_pan_pizza
        assert_equal(8.85, make_pizza("16 inch", [0], [0], [0], [0]))
    end



end