def stock_picker(arr)
  if arr.kind_of?(Array)
    profitHash = {}
    last_day = arr.length - 1
    arr.each_with_index do |buy, buy_day|
      sellArr = arr[(buy_day + 1)..last_day]
      sell = sellArr.map(&:to_f).max
      sell_day = arr.index(sell)
      profit = sell.to_i - buy.to_i
      profitHash[profit] = [buy_day, sell_day] 
    end  
    profitHash[profitHash.keys.max].inspect
  else
    puts "Wrong input."
  end
end

puts stock_picker([17,3,6,9,15,8,6,1,10])

