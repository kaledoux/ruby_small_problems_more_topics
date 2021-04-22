# Let's start things from the ground up. We want to make a simple test suite for 
# our CashRegister class. Setup the initial testing file. You don't have to have 
# any tests in your test file. For this exercise, write everything you would need 
# to start testing CashRegister, excluding the tests themselves 
# (necessary requires, test class, etc.).

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
end