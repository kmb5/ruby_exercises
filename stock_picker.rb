def stock_picker(prices)

    best_prices_to_buy_and_sell = [0, 0]

    for i in 0...(prices.length)
        for j in i...(prices.length)
            if (prices[j] - prices[i]) > (best_prices_to_buy_and_sell[1] - best_prices_to_buy_and_sell[0])
                best_prices_to_buy_and_sell = [prices[i], prices[j]]
            end
        end
    end

    return [prices.index(best_prices_to_buy_and_sell[0]), prices.index(best_prices_to_buy_and_sell[1])]
end

print stock_picker([17,3,6,9,15,8,6,1,10])
puts