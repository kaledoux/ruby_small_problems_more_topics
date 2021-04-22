# def convert_to_base_8(n)
#   n.method_name.method_name # replace these two method calls
# end

# # The correct type of argument must be used below
# base8_proc = method(argument).to_proc

# # We'll need a Proc object to make this code work. Replace `a_proc`
# # with the correct object
# [8, 10, 12, 14, 16, 33].map(&a_proc)

def convert_to_base_8(n)
  n.to_s(8).to_i
end
# puts convert_to_base_8(897)
# puts convert_to_base_8(8997)
# puts convert_to_base_8(123454)

base8_proc = method(:convert_to_base_8).to_proc

puts [8, 10, 12, 14, 16, 33].map(&base_8_proc)