require 'test/unit'
require_relative 'volunteer.rb'

class VolunteerTest < Test::Unit::TestCase
	def setup
		@n = 'Peter'
		@pps = '1234567AB'
		@h = 40
		@pay = 0
		@c = 'Charity Water'
		@e = Employee.new(@n,@pps,@h,@pay)
		@v = Volunteer.new(@n,@pps,@h,@c)
	end
	def test_to_s
		expected = @e.to_s + ", belongs to #{@c}"
		assert(@v.to_s == expected, "wtf")
	end
end