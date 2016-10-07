# person test
require 'test/unit'
require_relative 'person.rb'

class PersonTest < Test::Unit::TestCase
	def setup
		@n = 'Peter'
		@pps = '1234567AB'
		@p = Person.new(@n,@pps)
	end

	def test_to_s
		assert(@p.to_s == "#{@n} (PPS Number #{@pps})","wtf")
	end
end