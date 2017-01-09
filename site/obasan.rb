bye_count = 0
while true do
  puts "SAY SOMETHING:"
  input = gets.chomp
  if input == "BYE"
    bye_count += 1
  else
    bye_count = 0
  end
  if bye_count >= 3
    puts "BYE-BYE, SUNNY!"
    break
  end
  if input != input.upcase
    puts "WHAT!?"
  else
    puts "NO! I'M #{50 + rand(31)} YEAR-OLD!"
  end

  bye_count = 0
  while true do
    puts
  end