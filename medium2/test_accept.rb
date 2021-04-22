# We now have the foundation of our CashRegister test class set up. Let's start 
# testing! We'll start with the CashRegister#accept_money method. 
# Write a test for the #accept_money method.

require 'simplecov'
require 'minitest/autorun'

SimpleCov.start

require_relative 'transaction'
require_relative 'cash_register'

class CashRegisterTest < Minitest::Test
  def setup
    @test_register = CashRegister.new(0.00)
    @transact = Transaction.new(100.00)
    @transact.amount_paid = 60.00
  end
  
  def test_accept_money
    assert_equal(60.00, @test_register.accept_money(@transact))
  end
  
end