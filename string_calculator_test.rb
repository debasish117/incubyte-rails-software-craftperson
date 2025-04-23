# string_calculator_test.rb
require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
    def test_add_empty_string
        assert_equal 0, add("")
    end

    def test_add_single_number
        assert_equal 1, add("1")
        assert_equal 5, add("5")
    end

    def test_add_two_numbers
        assert_equal 3, add("1,2")
        assert_equal 7, add("3,4")
    end

    def test_add_with_newlines
        assert_equal 6, add("1\n2,3")
        assert_equal 10, add("4\n5,1")
    end

    def test_add_with_negative_numbers
        assert_raises(ArgumentError) { add("-1,2") }
        assert_raises(ArgumentError) { add("3,-4") }
    end
end