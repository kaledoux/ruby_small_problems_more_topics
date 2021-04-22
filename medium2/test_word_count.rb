# Test the word count method

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
  
  def test_word_count
    test_text = Text.new(@sample_text.read)
    assert_equal(72, test_text.word_count)
  end
  
  def teardown
    @sample_text.close
  end
end