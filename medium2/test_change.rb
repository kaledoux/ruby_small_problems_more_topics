# Write a test for the method, CashRegister#change
require 'simplecov'
SimpleCov.start 
require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @reg = CashRegister.new(500.00)
    @trans = Transaction.new(100.00)
    @trans.amount_paid = 125.00
  end
  
  def test_change
    actual_change = @trans.amount_paid - @trans.item_cost
    assert_equal(actual_change, @reg.change(@trans))
  end
  
end