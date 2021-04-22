# Write a test for method CashRegister#give_receipt that ensures it displays 
# a valid receipt.

require 'minitest/autorun'
require 'simplecov'

SimpleCov.start 

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @reg = CashRegister.new(500)
    @trans = Transaction.new(125)
  end
  
  def test_give_receipt
    assert_output("You've paid $#{@trans.item_cost}.\n") do 
      @reg.give_receipt(@trans)
    end
  end
end
