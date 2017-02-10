################################################################
#
#   CSC 372 Spring 2017 - Project 01
#
#   Author: Yujia Lin
#
#   Instructor: McCann
#
#   Filename: hailstones.rb
#
################################################################

=begin
In 1937, Lothar Collatz, a German mathematician, suggested that the following result is always true:
Start with a positive integer. If that integer is an even number, halve it. If it is odd, triple it and add
one. Continuing this with the resulting integers will always cause you to reach one, sooner or later. What
makes this process interesting is that no one has been able to prove that the sequence will reach one
for every positive integer, but every number ever tested (over 5 × 10^8 of them) has. This conjecture is
known by many names, including the Collatz Conjecture and the Hailstone Sequence.
=end

# The program will show Hailstone Sequence

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