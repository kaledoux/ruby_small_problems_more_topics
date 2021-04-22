# Write a method that takes an optional block.
# If the block is specified, the method should execute it, and return the value
# returned by the block. If no block is specified, the method should simply
# return the String 'Does not compute.'.
#
# Examples:
#
# compute { 5 + 3 } == 8
# compute { 'a' + 'b' } == 'ab'
# compute == 'Does not compute.'

def compute()
  block_given? ? yield : "Does not compute."
end

puts compute { 5 + 3 } == 8
puts compute { 'a' + 'b' } == 'ab'
puts compute == 'Does not compute.'

# Further Exploration

# Modify the compute method so it takes a single argument and yields that
# argument to the block. Provide at least 3 examples of calling this new
# version of compute, including a no-block call.

def compute(arg)
  block_given? ? yield(arg) : "Does not compute."
end

puts compute(5) { |num| num + 3 } == 8
puts compute('a') { |let| let + 'b' } == 'ab'
puts compute(nil) == 'Does not compute.'
