def stock_picker(prices)
	profit = 0
	max = 0
	best_dates = [] 
	combinations = prices.combination(2).to_a
	combinations.each do|combo|
		profit = combo[1] - combo[0]
		if profit > max
			best_dates = [prices.index(combo[0]), prices.index(combo[1])]		
			max = profit			
		end
	end
	return best_dates
end

stock_picker([17,3,6,9,15,8,6,1,10])
