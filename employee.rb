require_relative 'person.rb'
class Employee < Person
	def initialize(name, hour, rate)
		super(name)
		@hour = hour.to_f
		@rate = rate.to_f
	end

	def week_rate
		@hour*@rate
	end
	
end