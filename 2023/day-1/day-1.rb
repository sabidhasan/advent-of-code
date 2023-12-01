current_file_directory = File.dirname(File.join(Dir.pwd, __FILE__))
input_path = File.join(current_file_directory, "input.txt")

File.open(input_path, 'r') do |file|
  total = file.readlines.map do |line|
    numbers = line.scan(/\d+/)
    numbers = numbers.join("").rjust(2, numbers.first)
    "#{numbers[0]}#{numbers[-1].to_i}".to_i
  end.reduce(:+)

  puts total
end
