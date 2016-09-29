#Get My Number Game
#Written by:you!
puts " Welcome to 'Get My Number!'"
#gets the player's name, and greet them.
print "what's your name?"
input = gets
name = input.chomp
 puts "Welcome, #{name}!"
 #store a random number for the player to guess.
 puts "i'v got a random number between 1 and 100."
 puts "can you guess it ?"
 target = rand(100) + 1

 #Track how many guesses the player has made.
 num_guesses = 0
 #Track whether the player has guessed correctly.
 guessed_it = false

 until num_guesses == 10 || guessed_it
 puts " You've got #{10 - num_guesses} guesses left."
 print "make a guess:"
 guess = gets.to_i
 num_guesses += 1
 #compare the guess to the target.
 #print the appropriate message.
 if guess < target
 	puts "Oops. Your guess was LOW."
 	elsif guess > target
 	puts "Oop.Your guess was HIGH."
 	elsif guess == target
 	puts "Good job, #{name}!"
 	puts "You guessed my number in #{num_guesses}guesses!"
 	guessed_it = true
 end
end
 #if the player didn't guess in time, show the target number.
 unless guessed_it
 	puts "Sorry.you didn'tget my number. (it was #{target}.)"
 end
