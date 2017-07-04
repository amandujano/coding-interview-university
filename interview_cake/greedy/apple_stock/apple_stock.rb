# Main idea: greedy greedy you greedy bastard

def get_max_profile(stock_prices_yesterday)

  if stock_prices_yesterday.size < 2
    raise 'You must have more than one day of stock trading'
  end
  # best answer so far
  max_profit = stock_prices_yesterday[1] - stock_prices_yesterday[0]

  # addtional value to keep track
  min_price = stock_prices_yesterday[0]

  # Idea: max_profit is either
  # 1. current max_profit
  # 2. new max_profile, that is current_price - min_price

  stock_prices_yesterday[1..-1].each_with_index do |current_price, index|
    current_profit = current_price - min_price

    min_price = current_price if current_price < min_price
    max_profit = current_profit if current_profit > max_profit
  end
  return max_profit
end