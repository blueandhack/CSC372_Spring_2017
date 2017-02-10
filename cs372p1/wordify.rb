################################################################
#
#   CSC 372 Spring 2017 - Project 01
#
#   Author: Yujia Lin
#
#   Instructor: McCann
#
#   Filename: wordify.rb
#
################################################################

# The program will read standard input or a file's content and filter words, then standard output
str =''

# Check input arguments
# Then get whole contents
if ARGV.length == 1
  target_filename= ARGV[0]
  file = File.new(target_filename, 'r')
  while (line = file.gets)
    line.each_char do |index|
      if (index >= 'a' && index <='z') || (index >= 'A' && index <='Z') || (index == '-') || (index>='0' &&index<='9')
        str += index
      else
        str += ' '
      end
    end
  end
  file.close
else
  # Read user input
  user_input = $stdin.read
  puts ''
  user_input.each_char do |index|
    if (index >= 'a' && index <='z') || (index >= 'A' && index <='Z') || (index == '-') || (index>='0' &&index<='9')
      str += index
    else
      str += ' '
    end
  end
end

# Split the string by white space to an array
words = str.split(' ')

filter_words = []

# Check every word then filter them
words.each do |word|
  count = 0
  word.each_char do |char|
    if char=='-'
      count+=1
    end
  end
  if count != word.length
    if word[0] == '-'
      index = 1
      while word[index]=='-'
        index += 1
      end
      filter_words << word[index .. word.length]
    else
      filter_words << word
    end
  end
end

puts filter_words
