def stock_picker(prices)
	picks = []
	buying = 0
	selling = 0
	profit = 0

	prices.each_with_index do |buy, i|
		prices.drop(1).each_with_index do |sell, x|
			if (sell - buy) > profit
				profit = sell - buy
				buying = i
				selling = x.to_i + 1
			end
		end
	end

	picks << buying << selling

	puts picks.join(", ")

end

stock_picker([12, 20, 4, 5, 29, 3, 15, 28])