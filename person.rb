# person
class Person
	protected
	attr_reader :name, :ppsn
	public
	def initialize(name, ppsn)
		@name = name
		@ppsn = ppsn
	end
	def to_s
		"#{@name} (PPS Number #{@ppsn})"
	end
	include Comparable
	def <=>(other)
		self.ppsn <=> other.ppsn
	end
end
