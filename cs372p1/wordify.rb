target_filename = ARGV[1]
save_filename = ARGV[3]
puts target_filename
puts save_filename
file = File.new(target_filename, 'r')
while (line = file.gets)
  puts line
end