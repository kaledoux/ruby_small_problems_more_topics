# # In the previous exercise, we wrote a method that emulates
# Enumerable#each_cons, but limited our method to handling 2 elements at a
# time. Enumerable#each_cons can actually handle any number of elements at
# a time: 1, 2, 3, or more.
# #
# # Update your each_cons method so it takes an argument that specifies how
# many elements should be processed at a time.
# #
# # Your method may use #each, #each_index, #each_with_object, #inject,
# loop, for, while, or until to iterate through the Array passed in as an
# argument, but must not use any other methods that iterate through an
# Array or any other collection.
# #
# # Examples:
# #
# # hash = {}
# # each_cons([1, 3, 6, 10], 1) do |value|
# #   hash[value] = true
# # end
# # hash == { 1 => true, 3 => true, 6 => true, 10 => true }
# #
# # hash = {}
# # each_cons([1, 3, 6, 10], 2) do |value1, value2|
# #   hash[value1] = value2
# # end
# # hash == { 1 => 3, 3 => 6, 6 => 10 }
# #
# # hash = {}
# # each_cons([1, 3, 6, 10], 3) do |value1, *values|
# #   hash[value1] = values
# # end
# # hash == { 1 => [3, 6], 3 => [6, 10] }
# #
# # hash = {}
# # each_cons([1, 3, 6, 10], 4) do |value1, *values|
# #   hash[value1] = values
# # end
# # hash == { 1 => [3, 6, 10] }
# #
# # hash = {}
# # each_cons([1, 3, 6, 10], 5) do |value1, *values|
# #   hash[value1] = values
# # end
# # hash == {}


def each_cons(collection, n = 1)
  return nil if collection.empty? || n > collection.size

  index = 0
  if n == 1
    collection.each { |item| yield(item) }
  elsif n == 2
    until index == collection.size - 1
      yield(collection[index], collection[index + 1])
      index += 1
    end
  else
    collection.each do |item|
      break if collection[(index + n)-1] == nil
      start = index + 1
      yield(collection[index], *collection[start, n - 1] )
      index += 1
    end
  end

end

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash
puts hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash
puts hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash
puts hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash
puts hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash
puts hash == {}