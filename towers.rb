class TowerOfHanoi
	def initialize(num)
		@col1 = [1, "ooo", "oo", "o"]
		@col2 = [2]
		@col3 = [3]
		@cols = [@col1, @col2, @col3]
		puts "Welcome to Tower of Hanoi!"
		puts "Instructions:"
		# o
		# oo
		# ooo
		# 1    2    3
		# Enter move >

		puts "Enter where you'd like to move from and to in the format '1,3'.
				Enter 'q' to quit."
		start
	end

	def start
		render
		move
		play(@move)
	end

	def play(move)
		if @col3 == [3, "ooo", "oo", "o"] || @cols3 == [3, "o", "oo", "ooo"]
			puts "Game Over"
		else
			if move == 'q' || move == 'Q'
				exit
			elsif move[0] == "1" && move[1] == "2"
				item_popped = @col1.pop
				@col2.push(item_popped)
				start
			elsif move[0] == "2" && move[1] == "3"
				item_popped = @col2.pop
				@col3.push(item_popped)
				start
			end
		end
	end

	def move 
		puts "What's your move?"
		@move = gets.chomp.split(',')
	end

	def render
		puts "Current Board:"
		puts @cols
	end
end