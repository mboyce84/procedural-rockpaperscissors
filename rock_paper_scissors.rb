#Rock, Paper, Scissors Ruby Game
#Rock defeats (breaks) Scissors.
#Scissors defeats (cuts) Paper.
#Paper defeats (covers) Rock.

def winner ()

end

puts "Play Paper Rock Scissors"
puts "Choose one: (P/R/S)"
user_choice = gets.chomp

cpu_array = ["Rock", "Paper", "Scissors"]
cpu_array = cpu_array.sample

if user_choice == 'p'
	puts "You picked Paper and computer picked " + cpu_array
elsif user_choice == 'r'
	puts "You picked Rock and computer picked " + cpu_array
elsif user_choice == 's'
	puts "You picked Scissors and computer picked " + cpu_array
else
	puts "Invalid Selection"
end

puts "Play again? (Y/N)"
play_again = gets.chomp
	
	