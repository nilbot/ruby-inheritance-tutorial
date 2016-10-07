# person test
require 'test/unit'
require_relative 'person.rb'

class PersonTest < Test::Unit::TestCase
	def setup
		@n = 'Peter'
		@p = Person.new(@n)
	end
	
	def test_initialize
		assert(@p.name == @n,"wtf")
	end
end