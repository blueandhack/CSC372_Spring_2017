################################################################
#
#   CSC 372 Spring 2017 - Project 01
#
#   Author: Yujia Lin
#
#   Instructor: McCann
#
#   Filename: wordsort.rb
#
################################################################

# The program will sort data from a file

# Check input argument
if ARGV.length < 1
  puts 'Usage:  ruby wordsort.rb <filename>'
  exit 1
end

# Binary insertion sort
# It use binary search to find where can insert
# @param array: an array you want to sort, sort_array: an array you want store sorted element
#
# @return sort_array
#
def insertion_sort(array, sort_array)
  i=1
  while i<array.length
    insert_index = binary_search(sort_array, array[i])
    sort_array.insert(insert_index, array[i])
    i+=1
  end
  sort_array
end

# Helper method that find a index can insert element
# @param array: an array you want to sort, val: you want to insert value
#
# @return sort_array
#
def binary_search(array, val)
  mid = 0
  low = 0
  high = array.length-1
  index = 0
  while low<=high
    mid = low + (high-low) / 2
    if array[mid] < val
      low = mid+1
      index = mid+1
    elsif array[mid]>val
      high = mid-1
      index = mid
    else
      index = mid
      break
    end
  end
  index
end

target_filename= ARGV[0]

split_filename = target_filename.split('.')

# create a filename that we can save new content
save_filename = split_filename[0]+'-sorted.'+split_filename[1]

# Read file
file = File.new(target_filename, 'r')

str=''

# Read whole content then put to a string
while (line = file.gets)
  str+=' '+line
end

# Split str by white space then store to an array
words = str.split(' ')
sort_words = []

# If word array's length not equal zero, do it
if words.length !=0
  sort_words << words[0]
  insertion_sort(words, sort_words)
end

# Store new data to new file
File.open(save_filename, 'w+') do |f|
  f.puts(sort_words)
end
