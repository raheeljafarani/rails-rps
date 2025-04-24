class PlayController < ApplicationController

  def rules
    render({ :template => "game_templates/play_rules"})
  end

  def rock
    moves = ["Rock", "Paper", "Scissors"]

    @comp_move = moves.sample
  
    if @comp_move == "Rock"
      @outcome = "Tied"
  
  elsif @comp_move == "Paper"
    @outcome = "Lost"
  else
    @outcome = "Won"
  end
   render({ :template => "game_templates/play_rock"})
  end 

  def paper
    moves = ["Rock", "Paper", "Scissors"]

  @comp_move = moves.sample

  if @comp_move == "Rock"
    @outcome = "Won"

elsif @comp_move == "Paper"
  @outcome = "Tied"
else
  @outcome = "Lost"
end
    render({ :template => "game_templates/play_paper"})
  end 

  def scissors
    moves = ["Rock", "Paper", "Scissors"]

  @comp_move = moves.sample

  if @comp_move == "Rock"
    @outcome = "Lost"

elsif @comp_move == "Paper"
  @outcome = "Won"
else
  @outcome = "Tied"
end
    render({ :template => "game_templates/play_scissors"})
  end 
end
