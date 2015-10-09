class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    rps = ["rock", "paper", "scissors"]

    @computer_move = rps.sample

        if @computer_move == @user_move
          @result = "It's a tie"

        elsif @computer_move == "rock" && @user_move == "paper"
          @result = "You win!"


        elsif @computer_move == "rock" && @user_move == "scissors"
          @result = "You lose!"


        elsif @computer_move == "paper" && @user_move == "rock"
          @result = "You lose!"


        elsif @computer_move == "paper" && @user_move == "scissors"
          @result = "You win!"


        elsif @computer_move == "scissors" && @user_move == "paper"
          @result = "You lose!"


        elsif @computer_move == "scissors" && @user_move == "rock"
          @result = "You win!"

        end

        # ===============================================================
        # Your code goes above.
        # ===============================================================

        render("rps.html.erb")
      end
    end
