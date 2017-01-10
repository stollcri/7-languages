defmodule PF.PrimeFactors do
#   def prime_factors(num) do
#     []
#   end

#  def prime_factors(num) do
#    cond do
#    	num == 1 -> []
#    	true -> [2]
#    end
#  end

# 	def prime_factors(num) do
# 		cond do
# 			num == 1 -> []
# 			rem(num, 2) == 0 and num > 2 -> [2, 2]
# 			true -> [num]
# 		end
# 	end

# 	def prime_factors(num) do
# 		result = []
# 		cond do
# 			rem(num, 2) == 0 -> [2] ++ prime_factors(div(num, 2))
# 			rem(num, 3) == 0 -> [3] ++ prime_factors(div(num, 3))
# 			rem(num, 5) == 0 -> [5] ++ prime_factors(div(num, 5))
# 			true -> result
# 		end
# 	end

	def prime_factors(num, candidate \\ 2) do
		cond do
			num < candidate -> []
			rem(num, candidate) == 0 ->
				[candidate] ++ prime_factors(div(num, candidate), candidate)
			true -> prime_factors(num, candidate + 1)
		end
	end
end