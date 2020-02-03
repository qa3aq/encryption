require 'digest'

puts "Введите слово или фразу для шифрования:"
str = STDIN.gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
num = gets.to_i

puts "Вот, что получилось:"

if num == 1
  puts Digest::MD5.hexdigest(str)
elsif num == 2
  puts Digest::SHA1.hexdigest(str)
else
  puts "Нет такого способа."
end


