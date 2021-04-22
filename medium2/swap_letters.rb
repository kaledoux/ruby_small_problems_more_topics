# For this exercise you'll be given a sample text file and a starter class. 
# The sample text's contents will be saved as a String to an instance 
# variable in the starter class.

# The Text class includes a #swap method that can be used to replace all 
# occurrences of one letter in the text with another letter. And for this 
# exercise we will swap all occurrences of 'a' with 'e'.

# Your task is to write a test suite for class Text. In that test suite 
# write a test for the Text method swap. For this exercise, you are 
# required to use the minitest methods #setup and #teardown. 
# The #setup method contains code that will be executed before each test; 
# #teardown contains code that will be executed after each test.

require 'minitest/autorun'
require 'simplecov'

SimpleCov.start

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @sample_text = File.open('./sampletext.txt', 'r')
  end
  
  def test_swap
    test_text = Text.new(@sample_text.read)
    swapped_text = "Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
et verius meuris, et pheretre mi."
    assert_equal(swapped_text, test_text.swap('a', 'e'))
  end
  
  def teardown
    @sample_text.close
  end
end