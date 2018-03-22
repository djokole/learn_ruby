class Timer
	attr_reader :seconds

	def seconds=(number)
		@seconds = number
	end

  	def initialize
  		@seconds = 0
  		@minutes = 0
  		@hours = 0
	end

	def time_string
		if @seconds >= 60
			@minutes = @seconds / 60
			@seconds = @seconds % 60
		end

		if @minutes >= 60
			@hours = @minutes / 60
			@minutes = @minutes % 60
		end

		seconds_string = @seconds.to_s
		minutes_string = @minutes.to_s
		hours_string = @hours.to_s

		if @seconds < 10
			seconds_string = '0' + seconds_string
		end
		if @minutes < 10
			minutes_string = '0' + minutes_string
		end
		if @hours < 10
			hours_string = '0' + hours_string
		end

		return hours_string + ':' + minutes_string + ':' + seconds_string
	end
end
