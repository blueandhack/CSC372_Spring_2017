def insertion_sort(array)
  (1..array.length).each do |index|
    temp = array[index]
  end
  array
end

def binary_search

end

target_filename= ARGV[0]

split_filename = target_filename.split('.')

save_filename = split_filename[0]+'-sorted.'+split_filename[1]

file = File.new(target_filename, 'r')

str=''

while (line = file.gets)
  str+=' '+line
end

words = str.split(' ')

insertion_sort(words)

puts words

