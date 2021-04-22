# The Enumerable#each_cons method iterates over the members of a collection
# taking each sequence of n consecutive elements at a time and passing them
# to the associated block for processing. It then returns a value of nil.
#
# Write a method called each_cons that behaves similarly for Arrays, taking
# the elements 2 at a time. The method should take an Array as an argument,
# and a block. It should yield each consecutive pair of elements to the
# block, and return nil.
#
# Your method may use #each, #each_with_object, #each_with_index, #inject,
# loop, for, while, or until to iterate through the Array passed in as an
# argument, but must not use any other methods that iterate through an
# Array or any other collection.
#
# Examples:
#
# hash = {}
# result = each_cons([1, 3, 6, 10]) do |value1, value2|
#   hash[value1] = value2
# end
# result == nil
# hash == { 1 => 3, 3 => 6, 6 => 10 }
#
# hash = {}
# result = each_cons([]) do |value1, value2|
#   hash[value1] = value2
# end
# hash == {}
# result == nil
#
# hash = {}
# result = each_cons(['a', 'b']) do |value1, value2|
#   hash[value1] = value2
# end
# hash == {'a' => 'b'}
# result == nil

def each_cons(collection)
  return nil if collection.empty?

  index = 0
  until index == collection.size - 1
    yield(collection[index], collection[index + 1])
    index += 1
  end
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
puts result == nil
puts hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
puts hash == {}
puts result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
puts hash == {'a' => 'b'}
puts result == nil
