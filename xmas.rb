# TODO: define method counting days to xmas
require 'date'

def days_until_xmas
  today = Date.today

  xmas_this_year = Date.new(today.year, 12, 25)

  if xmas_this_year > today
    return (xmas_this_year - today).to_i
  elsif xmas_this_year == today
    return "Merry Christmas"
  else
    xmas = xmas_this_year.next_year
    return (xmas - today).to_i
  end
end

puts days_until_xmas #=> 134

# Mock tests

# 1. Check if we return an Integer
puts days_until_xmas().class == Integer

# 2. Returns a correct number
puts days_until_xmas() == 134
