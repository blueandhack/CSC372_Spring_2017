number = ARGV[0].to_i
printf 'The hailstone sequence starting with %d', number
puts ''

count = 0
array = []

max = 0
count_number = 0

begin
  array << number
  if number%2 == 0
    number = number/2
    if max < number
      max = number
    end
  else
    number = number * 3 + 1
    if max < number
      max = number
    end
  end
  count_number = count_number+1
end until number == 1


array << 1

array.each do |index|
  if count%8 == 0
    puts ''
  end
  print "\t", index
  count = count+1
end

puts ''
puts ''
print "There are #{count_number} values; the largest is #{max}."