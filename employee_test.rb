require 'test/unit'
require_relative 'employee.rb'

class EmployeeTest < Test::Unit::TestCase
	def setup
		@n = 'Peter'
		@pps = '1234567AB'
		@hours = 40
		@rate = 8
		@p = Person.new(@n,@pps)
		@e = Employee.new(@n,@pps,@hours,@rate)
	end
	def test_week_rate
		assert(@e.week_rate == 40*8, "wtf")
	end
	def test_employee_to_s
		assert(@e.to_s == "#{@p.to_s} earns €#{'%.0f' % @e.week_rate} a week")
	end
end