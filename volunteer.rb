require_relative 'employee.rb'
class Volunteer < Employee
	def initialize(name,pps,hour,charity)
		super(name,pps,hour,0)
		@charity = charity
	end
	def to_s
		super + ", belongs to #{@charity}"
	end
end