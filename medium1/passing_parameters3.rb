# Given this code:

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end

# Fill out the following method calls for gather so that they produce the
# corresponding output shown in numbers 1-4 listed below:

# 1)

# gather(items) do | , |
#   puts
#   puts
# end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

# 2)

# gather(items) do | , , |
#   puts
#   puts
#   puts
# end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

# 3)

# gather(items) do | , |
#   puts
#   puts
# end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

# 4)

# gather(items) do | , , , |
#   puts
# end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!

# 1)
items = ['apples', 'corn', 'cabbage', 'wheat']


def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# gather(items) do |*foods, last_food |
#   puts foods.join(', ')
#   puts last_food
# end


# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

# 2)

# gather(items) do | fruit, *vegetables , wheat |
#   puts fruit
#   puts vegetables.join(', ')
#   puts wheat
# end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

# 3)

# gather(items) do | apple, *leftovers |
#   puts apple
#   puts leftovers.join(', ')
# end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

# 4)

gather(items) do | food1, food2, food3, food4 |
  puts [food1, food2, food3, food4].join(', ')
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!
