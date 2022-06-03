def deegree_converter(c)
  (9 * c.to_f / 5 + 32)
end

puts "Please, input degree in Celsius and i'll convert it to Fahrenheit"
  
begin
  input = STDIN.gets.chomp
  unless ((!!Integer(input) rescue false) || (!!Float(input) rescue false))
    raise 
  end
rescue 
  puts "You input incorrect value, please try again"
  retry
end

puts "#{input}C = #{deegree_converter(input)}F"