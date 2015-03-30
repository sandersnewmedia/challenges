prev, value = 1, 2
sum = 0

while value <= 4000000 do
  if value % 2 == 0
    sum += value
  end
  prev, value = value, prev + value
end

puts sum
