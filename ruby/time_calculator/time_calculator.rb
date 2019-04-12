require 'time'
class Time_calculator
	def initialize(start_time,end_time)
		@start_time = start_time
		@end_time = end_time
	end
	def calculate
		if(@start_time =~ /(?:[01]\d|2[0-3]):(?:[0-5]\d):(?:[0-5]\d)/) ==0 && (@end_time =~ /(?:[01]\d|2[0-3]):(?:[0-5]\d):(?:[0-5]\d)/)==0
	s = Time.parse(@start_time)
	e = Time.parse(@end_time)
	total_hours = s.hour + e.hour
	sum = s + e.hour*60*60 + e.min*60 + e.sec
	if(total_hours >= 24)
		puts " 1 day & #{sum.hour}:#{sum.min}:#{sum.sec}"
	else
		puts "#{sum.hour}:#{sum.min}:#{sum.sec}"
	end
else
	raise "Invalid time values"
end
end
end
t = Time_calculator.new("13:33:51","10:10:47")
t.calculate
