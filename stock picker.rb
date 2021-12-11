def stock_picker(stock)
  day1 = 0
  day2 = 0
  profit = 0
  stock.each_with_index do |i, index|
    (index..stock.length - 2).each do |j|
      j += 1
      if (stock[j] - i) > profit
        profit = stock[j] - i
        day1 = index
        day2 = stock.index(stock[j])
      end

    end
  end
  [day1,day2]
end
p stock_picker([17,3,6,9,15,8,6,1,10])