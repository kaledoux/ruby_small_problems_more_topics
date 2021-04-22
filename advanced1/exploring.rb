# # Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

=begin
With the proc we can see a few things from the return values. The first is that when the variable referring to the
proc is first called (line 3) it outputs what appears to be a filepath for the exact point in the environment where
the Proc was created. The #class call on line 4 outputs as expected. 
Regarding arity, when the proc is called without a block parameter being passed explicitly to the block via the 
argument of the #call method, it still functions and returns an output with nil interpolated in the output string. 
When called with an argument, it functions as expected.
=end

# # Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

=begin
There are a few interesting observations to be made from this group of code pertaining to lambdas. The first is that
a lambda can be created from the syntax found on lines 18 & 19, but not using the syntax on line 25. This reveals 
that Lambda does not have a class method ::new. In fact, checking through documentation reveals Lambda to not be a 
class at all!
The syntax used on lines 18 & 19 both create proc objects as the outputs from lines 20 & 21 demonstrate, with the
call to #class on line 22 confirming.
Arity rules seem to imply that call with arguments passed in will succeed whereas those invoked without
arguments will raise exceptions. (line 24)
=end

# # Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

=begin
Here we can see expected behaviors with blocks and arity rules; methods that yield to blocks can be defined in a 
manner that does not feed their arguments to the blocks, so the blocks can be called without a block argument,
but the methods cannot be invoked without a block at all.
=end

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

=begin
Here we can see another method defined which yeilds to a block, this time around though it passes the method's para
into the block to be used as a block parameter. 
The first example on line 56 matches up neatly and outputs an expected result. The second example on line 57 uses 
one method arguments passed in the block with two expected block parameters. Arity rules are looser here and show 
that the first block parameter will grab the argument from the method and the subsequent parameter will simply assign
itself to nil, as the output demonstrates.
Line 60 shows expected errors when trying to call an undefined method or variable.
=end

=begin
Ultimately, it appears that the order of these objects in descending strictness of arity rules is as follows:
lambda, proc, block
note that implicit blocks are not technically objects at all, but rather, a type of closure.
Lambdas appear to be proc objects, but still behave differently (with stricter arity rules than traditional procs).
=end