# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution



# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate
    letters = ['B', 'I', 'N', 'G', 'O'].shuffle!
    number = rand(1..100).to_s

    @number = number.prepend(letters[0])
  end

  def column_check
    @bingo_board.each do |column|
      column[0] = column[0].to_s.prepend('B')
      column[1] = column[1].to_s.prepend('I')
      column[2] = column[2].to_s.prepend('N')
      column[3] = column[3].to_s.prepend('G')
      column[4] = column[4].to_s.prepend('O')

      @bingo_board.each do |check|
        check.map! { |x| x == @number ? 'x' : x }
      end
    end

    p @number
    p @bingo_board
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

What are the benefits of using a class for this challenge?

How can you access coordinates in a nested array?

What methods did you use to access and modify the array?

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?

  =end