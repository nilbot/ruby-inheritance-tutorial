require 'test/unit'
require_relative 'employee.rb'

class EmployeeTest < Test::Unit::TestCase
	def setup
		@n = 'Peter'
		@hours = 40
		@rate = 8
		@e = Employee.new(@n,@hours,@rate)
	end
	def test_week_rate
		assert(@e.week_rate == 40*8, "wtf")
	end
	def test_employee_to_s
		assert(@e.to_s == "#{@e.name} earns €#{'%.0f' % @e.week_rate} a week")
	end
end