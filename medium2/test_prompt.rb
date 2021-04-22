# Write a test that verifies that Transaction#prompt_for_payment sets the 
# amount_paid correctly. 
# We've changed the transaction class a bit to make testing this a bit easier. 
# The Transaction#prompt_for_payment now reads as:

# def prompt_for_payment(input: $stdin) # We've set a default parameter for stdin
#   loop do
#     puts "You owe $#{item_cost}.\nHow much are you paying?"
#     @amount_paid = input.gets.chomp.to_f # notice that we call gets on that parameter
#     break if valid_payment? && sufficient_payment?
#     puts 'That is not the correct amount. ' \
#         'Please make sure to pay the full cost.'
#   end
# end

require 'minitest/autorun'
require 'simplecov'

SimpleCov.start

require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def setup 
    @reg = CashRegister.new(500)
    @trans = Transaction.new(100)
  end 
  
  def test_prompt_for_payment
    assert_equal(0, @trans.amount_paid)
    input = StringIO.new('100\n')
    @trans.prompt_for_payment(input: input)
    assert_equal(100, @trans.amount_paid)
  end 
end