target_filename = ''

if ARGV[0]
  target_filename= ARGV[0]
else
  puts 'Usage:  ruby concordance.rb <filename>'
  exit 1
end

file = File.new(target_filename, 'r')

hash = {}

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

hash = hash.sort_by { |key| key }

get_long = hash.sort.to_h.keys[0].length

hash.each do |key, value|
  v = '%'+get_long.to_s+'s'
  printf v, key
  value.each do |cool|
    printf ' %s', cool
  end
  puts ''
end