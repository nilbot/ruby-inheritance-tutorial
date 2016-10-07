require_relative 'person.rb'
class Employee < Person
	def initialize(name, pps, hour, rate)
		super(name,pps)
		@hour = hour.to_f
		@rate = rate.to_f
	end

	def week_rate
		@hour*@rate
	end
	
	def to_s
		super + " earns €#{'%.0f' % week_rate} a week"
	end
end