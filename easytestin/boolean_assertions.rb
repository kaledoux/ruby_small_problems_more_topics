# Write a minitest assertion that will fail if the value.odd? is not true.
require 'minitest/autorun'
require 'minitest/reporters'

class BooleanTest < Minitest::Test

  def test_odd
    assert(value.odd?, 'value is not odd')
  end
end
