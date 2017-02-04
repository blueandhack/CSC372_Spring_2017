save_filename= ARGV[1]
target_filename= ARGV[3]

file = File.new(target_filename, 'r')
str = ''
while (line = file.gets)
  line.chomp!
  line.each_char do |index|
    if (index >= 'a' && index <='z') || (index >= 'A' && index <='Z') || (index == '-') || (index>='0' &&index<='9')
      str += index
    else
      str += ' '
    end
  end
end

words = str.split(' ')

File.open(save_filename, 'w+') do |f|
  f.puts(words)
end