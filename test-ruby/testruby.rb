$KCODE = 'u'

require './moral.rb'

puts "Hello world"

print <<EOF
This is the first way of creating
here document ie.multiple line string.
EOF

print <<"foo", <<"bar"
	I said foo.
foo
	I said bar.
bar

begin
	puts "Initializing Ruby"
rescue Exception => e

end
=begin

This is a comment

=end
$bientoancuc =10
class Customer
	include Moral
	@@no_of_customers =0

	def initialize(id,name,address)
		@cust_id = id
		@cust_name = name
		@cust_addr = address
	end
	def ingiatri(id,name)
		@@no_of_customers =1
		@cust_id =id
		if(@cust_id != 10)
			puts "Giatri duoc in la #{@cust_id}"
			puts @@no_of_customers
		end
		#if(_idmen != nil)
		#	puts "Gia tri chua khoi tao duoc in la #{_idmen}"
		#end
	end
	alias abc ingiatri
#	undef bar
end
cust1 = Customer.new("1","Pauls","90/45")
puts "bien toan cuc co gia tri la #{$bientoancuc}"
#cust1.abc(11,"bb")
#cust1.bar
cust1.doit
#cust1.ingiatri(10,"aa")
puts __FILE__
puts __LINE__

ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary2 = Array["fred", 10, 3.15,"This is","last"]
result = ary&ary2
result.each do |i|
	puts i
end
a =b =c = d = 1

puts a,b,c,d


hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

MR_COUNT = 0        # constant defined on main Object class
module Foo
  MR_COUNT = 0
  ::MR_COUNT = 1    # set global count to 1
  MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT       # this is the global constant
puts Foo::MR_COUNT  # this is the local "Foo" constant

def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}
$debug=1
print "debug\n" if $debug
a = false
if(!a)
	print "Hai\n"
end


#!/usr/bin/ruby

$age =  5
case $age
when 0 .. 2
    puts "baby"
when 3 .. 6
    puts "little child"
when 7 .. 12
    puts "child"
when 13 .. 18
    puts "youth"
else
    puts "adult"
end

def sample (*test)
   puts "The number of parameters is #{test.length}"
   for i in 0...test.length
      puts "The parameters are #{test[i]}"
   end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"


module A
   def a1
   	puts 'a1'
   end
   def a2
   	puts 'a2'
   end
end
module B
   def a1
   	puts 'b1'
   end
   def b2
   	puts 'b2'
   end
end

class Sample
include B
include A
   def s1
   	puts 's1'
   end
end

samp=Sample.new
samp.a1
samp.a2
samp.b2
samp.s1



myStr = String.new("THIS IS TEST")
foo = myStr.downcase

puts "#{foo}"
foo2 = myStr*2
puts "#{foo2}"



H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
puts "#{H['b']}"
puts "#{H.keys}"
a = [1,2,3,4,5]
puts a
b = Array.new
b = H.to_a
puts b
puts Dir.pwd
puts Dir.entries(Dir.pwd)