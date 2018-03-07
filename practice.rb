#Tic_Tac_Toe Rules:
#                                                     1 2 3
#Starts with displaying empty 3x3 nested array ex: [A[0,0,0],
#                                                   B[0,0,0],
#                                                   C[0,0,0] ]
#Each player takes turn inputting command on where to mark ex: A1, B2, C3
#It goes on until a player wins, or the board is full
#For a player to win, there are 8 ways: either 123 of a letter, same number of ABC ex: A2, B2, C2
#                                       or A1, B2, C3 or A3, B2, C1
#The Game Flow:
#Start
#1. Display of board
#2. Player 1 inputs => check game end condition
#3. Display of updated board
#4. Player 2 inputs => check game end condition
#5. Display of updated board
#Back to 2 and iterate until board is full or win condition is satisfied to end the game
#Finished Game
#Restart? Empty the board and start the game again : quit
require './class.rb'
game = BoardGame.new
game.play
