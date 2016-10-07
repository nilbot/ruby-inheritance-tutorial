require_relative 'employee.rb'
class Manager < Employee
	def initialize(name, pps, hour, rate, bonus)
		super(name,pps,hour,rate)
		@bonus = bonus.to_f
	end

	def week_rate
		super + @bonus
	end

	def to_s
		super + ", which includes a bonus of €#{'%.0f' % @bonus}"
	end
end