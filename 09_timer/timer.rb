class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0 
	end

	def time_string (time=@seconds)
		hours = time/3600
		remainder = time%3600
		minutes = remainder/60
		seconds = remainder%60
		
		padded(hours)+ ":" +padded(minutes) + ":" + padded(seconds)
	end

	def padded num
		if num < 10
			"0" + num.to_s
		else
			num.to_s
		end
	end
end
