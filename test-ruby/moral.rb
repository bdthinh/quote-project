module Moral
	IND = 10
	module ClassMethods
		
	end
	
	module InstanceMethods
		
	end
	
	def self.included(receiver)
		receiver.extend         ClassMethods
		receiver.send :include, InstanceMethods
	end
	def doit
		puts 'myname\'jin'
	end
end