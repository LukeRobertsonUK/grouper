NAMES = ['CJ', 'Stewart', 'James P.','Luke','Adam','Britney','Michael','Hendre','Julien','Andrea','Salmon', 'Ankoor','Murad','James E.','Jarkyn','Aya','Will','Emille']

session_names = NAMES

puts "WELCOME TO THE RANDOM TEAM CREATOR"
puts "\nYour group consists of the following people...."
puts NAMES.join(", ")
puts "\nOK, let's shuffle your group..."
session_names.shuffle!
puts session_names.join(", ")
puts "\nNow let's create some groups... how many people would you like in each group?"
group_size = gets.chomp.to_i

groups = session_names.each_slice(group_size).to_a
groups.each do |team|
  puts "\nGroup: #{team.join(", ")}"
end

if session_names.size % group_size == 0
  puts "\nYour teams are ready to work!"
elsif
  session_names.size % group_size < (group_size - 1)
  puts "\nWe suggest that #{groups.last.join(", ")} split up and join the other groups. Alternatively, your group is divisible by the following factors:"
  (1..session_names.size).each do |x|
   puts x if session_names.size % x == 0
end
end

