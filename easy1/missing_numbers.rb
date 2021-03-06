# Write a method that takes a sorted array of integers as an argument, and
# returns an array that includes all of the missing integers (in order) between
# the first and last elements of the argument.
#
# Examples:
#
# missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# missing([1, 2, 3, 4]) == []
# missing([1, 5]) == [2, 3, 4]
# missing([6]) == []

def missing(arr)
  return [] if arr.size == 1
  (arr[0]..arr[-1]).to_a - arr
end

p missing([-3, -2, 1, 5])
p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4])
p missing([1, 2, 3, 4]) == []
p missing([1, 5])
p missing([1, 5]) == [2, 3, 4]
p missing([6])
p missing([6]) == []
