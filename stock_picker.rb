

def stock_picker(stock_prices)
  buy = 0
  sell = 0
  stock_prices.each_with_index do |buy_price, i|
    stock_prices[i+1..-1].each_with_index do |sell_price, j|
      if(sell_price - buy_price > max_profit)
        max_profit = sell_price - buy_price
        buy = i
        sell = j+i+1
      end
    end
  end

  return[buy, sell]
end
puts "enter your stock prices"
stock_prices = gets.chomp.split(',').map { |price| price.to_i  }
puts stock_picker(stock_prices)
