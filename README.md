# connect_four

I added a lib and spec folder -ce

### Overview
- player input: names
- player take turns until someone has won
- def winning, Losing, Draw method
- game needs to look like below at the start:

ABCDEFG
.......
.......
.......
.......
.......
.......

- def start game method: "GO"


### Iteration 1:
- welcome message
- print an empty board:
ABCDEFG
.......
.......
.......
.......
.......
.......

player pcs = "X", "O"

### Iteration 2:
####Test Driven Development
In this iteration, you are required to use TDD to create your classes. Use the interaction pattern to determine what a method should do and write one or more tests to verify that expected behavior. Then you can implement the method. You should always write code with the purpose of making a test pass.

####Placing Pieces
Update your program to request user input and allow them to place an individual piece.

Your program should ask the user to enter a letter A-G. Update the board to display the player’s piece in the lowest available position of the selected column with an ‘X’.

The computer takes its turn by selecting one of the 7 columns at random. Update the board to display the computer’s piece in the lowest available position of the selected column with an ‘O’.

The player and computer should be able to repeat this sequence and continue taking turns.

####Invalid Column Selection
Neither the player nor computer should be able to play in an invalid column. An invalid column is defined as one of the following:

Outside the range A-G
Full, i.e. there is no available position in the column
If an invalid column is selected by the player, the program should display an error message and ask the player to select a valid column. The program should repeat this process until a valid column is selected.

The one exception is when there are no valid columns available; i.e. the game board is full. In this case, the game is a draw, an endgame condition.
If an invalid column is selected by the computer, the program should repeat until a valid column is selected. No error message should display to the user when the computer selects an invalid column.
