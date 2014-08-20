#TITLE: Rock, Paper, Scissors Ruby Game
#AUTHOR: MjB
#DESCRIPTION: Rock defeats (breaks) Scissors, Scissors defeats (cuts) Paper and Paper defeats (covers) Rock

#METHODS BEGIN#
# Method for the replay logic and input validation
def replay(play_again_choice)
	if play_again_choice == 'y' || play_again_choice == 'yes'
		puts "\n---------Time for a rematch!---------\n"
	elsif play_again_choice == 'n' || play_again_choice == 'no'
		puts "\n---------Thanks for playing!---------\n"
		exit
	else
		puts "\nInvalid response entered. Would You Like to Play again? (Y/N)"
		play_again_choice = gets.chomp.downcase
		replay(play_again_choice)
	end
end
#METHODS END#

#MAIN APPLICATION BEGINS#
# Hash for rock, paper scissors game setup
CHOICES = {'p' => 'paper', 'r' => 'rock', 's' => 'scissors'}

puts "\n---------MjB's Rock Paper Scissors Ruby Game---------"
puts "\nRules: Rock defeats (breaks) Scissors, Scissors defeats (cuts) Paper and Paper defeats (covers) Rock. This game is played against the computer."

loop do
# Player makes a pick
	begin
		puts "\nChoose your weapon: (R/P/S)"
		user_choice = gets.chomp
	end until CHOICES.keys.include?(user_choice)

# Computer makes a pick
	computer_choice = CHOICES.keys.sample

# Tie condition
	if user_choice == computer_choice
		puts "\nIt's a Tie! You both picked #{CHOICES[(computer_choice)]} :)"
# User Wins
	elsif (user_choice == 'r' && computer_choice == 's') || (user_choice == 's' && computer_choice == 'p') || (user_choice == 'r' && computer_choice == 'p')
		puts "\nYou won! You picked #{CHOICES[(user_choice)]} and the computer picked #{CHOICES[(computer_choice)]}."
	else
		puts "\n The computer won! You picked #{CHOICES[(user_choice)]} and the computer picked #{CHOICES[(computer_choice)]}."
	end

# Replay logic
	puts "\nWould you like to play another round of Rock, Paper, Scissors? (Y/N)"
	play_again_choice = gets.chomp.downcase
	replay(play_again_choice)
end
#MAIN APPLICATION ENDS#