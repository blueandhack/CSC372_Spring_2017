################################################################
#
#   CSC 372 Spring 2017 - Project 01
#
#   Author: Yujia Lin
#
#   Instructor: McCann
#
#   Filename: concordance.rb
#
################################################################

# The program will record position in a file
target_filename = ''

if ARGV[0]
  target_filename= ARGV[0]
else
  puts 'Usage:  ruby concordance.rb <filename>'
  exit 1
end

# Read file
file = File.new(target_filename, 'r')

hash = {}

# Get every word then put to hash
i = 1
while (line = file.gets)
  line_words = line.split(' ')
  line_words.each_with_index do |word, index|
    array = hash[word]
    if array == nil
      array = []
    end
    array << '('+i.to_s+','+(index+1).to_s+')'
    hash[word] = array
  end
  i+=1
end

file.close

total_keys = hash.keys

get_long = 0

# Get longest word
total_keys.each do |v|
  if get_long< v.length
    get_long = v.length
  end
end

# Show results
hash.sort.each do |key, value|
  v = '%'+get_long.to_s+'s'
  printf v, key
  value.each do |cool|
    printf ' %s', cool
  end
  puts ''
end