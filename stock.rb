def stock_picker (prices)
	buy_price = 0
	sell_price = 0
	profit = 0

	for i in 0..prices.length
		for j in i+1... prices.length
			if prices[j] - prices[i] > profit
				profit = prices[j] - prices[i]
				buy_price = i
				sell_price = j
			end 
		end 
	end 

	return [buy_price, sell_price]
end 

if __FILE__ == $PROGRAM_NAME
	
	puts stock_picker([17,3,6,9,15,8,6,1,10])
end  
