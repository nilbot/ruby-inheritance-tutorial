require 'test/unit'
require_relative 'manager.rb'

class ManagerTest < Test::Unit::TestCase
	def setup
		@n = 'Peter'
		@h = 50
		@r = 12
		@b = 100
		@pps = '1234567AB'
		@p = Person.new(@n,@pps)
		@m = Manager.new(@n,@pps,@h,@r,@b)
	end

	def test_week_rate
		assert(@m.week_rate == 700, "wtf")
	end

	def test_manager_to_s
		assert(@m.to_s == "#{@p.to_s} earns €#{'%.0f' % @m.week_rate} a week, which includes a bonus of €#{@b}", "wtf")
	end
end