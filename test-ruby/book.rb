@people = ['nam','thinh','hiep']
ages=[]
for person in @people
	ages << person
	ages.each do |i|
		puts i
	end
end

ages.empty!
puts "a" if ages.empty?

inst_section = {
:cello => 'string' ,
:clarinet => 'woodwind' ,
:drum => 'percussion' ,
:oboe => 'woodwind' ,
:trumpet => 'brass' ,
:violin => 'string' ,
}

class Greeter
	attr_accessor :name
	attr_writer	:age
	attr_reader :greeting
end

g = Greeter.new
g.name = "aaa"
puts g.name
puts g::name
