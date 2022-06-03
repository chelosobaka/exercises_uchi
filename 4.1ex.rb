def traffic_lights(collor)
  case collor
  when "red"
    "go"
  when "green"
    "stop"
  when "yellow"
    "wait"
  end
end

puts "input collor. If u want to break, input \"stop\""
while true do
  begin
    input = STDIN.gets.chomp
    if (input != "red") && (input != "green") && (input != "yellow") && 
      (input != "stop")
      raise 
    elsif input == "stop"
      break
    else
      puts traffic_lights(input) 
    end
  rescue 
    puts "You input incorrect value, please try again"
    retry
  end
end