	def add (*nums)
		nums.inject(0){|sum, x| sum = sum + x}
	end

	def subtract(*nums)
		nums.inject(){|sum, x| sum = sum - x}
	end

	def sum(nums)
		i = 0
		totalsum = 0
		for i in 0..(nums.size) do 
			if nums[i].kind_of? Integer
			totalsum = totalsum + nums[i]
			end
		end
		totalsum
	end

	def multiply(*nums)
		nums.inject(){|sum, x| sum = sum * x}
	end

	def power(a, b)
		a**b
	end

	def factorial(num)
		if num == 0 || num == 1
			return 1
		else
			num.downto(1).inject(:*)	
		end
				
	end
