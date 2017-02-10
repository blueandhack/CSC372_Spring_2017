number = ARGV[0].to_i
printf 'The hailstone sequence starting with %d', number
puts ''

count = 0
array = []

max = 0
count_number = 0

begin
  array << number
  if max < number
    max = number
  end
  count_number = count_number+1
  if number%2 == 0
    number = number/2
  else
    number = number * 3 + 1
  end
end until number == 1


array << 1


array.each do |index|
  if count%8 == 0
    puts ''
  end
  printf '%6d', index
  count = count+1
end

puts ''
puts ''
print "There are #{count_number+1} values; the largest is #{max}."