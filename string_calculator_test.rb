# string_calculator_test.rb
require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
    def test_add_empty_string
        assert_equal 0, add("")
    end
end