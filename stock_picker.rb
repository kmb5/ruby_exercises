def stock_picker(prices)

    prices.each_with_index do |price, index|

        selling_prices = prices[index..-1]
        
        min_selling_price = 0

        selling_prices.each do | selling_price | 
        
            profit = price - selling_price



    prices.reduce() do | min_price, daily_price |
        if 

stock_picker([17,3,6,9,15,8,6,1,10])