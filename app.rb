require "sinatra"
require "sinatra/reloader"

get("/") do
  
  erb(:base)
  
end



get("/scissors") do

    @toolbox = ["scissors", "paper", "rock"]

    @we = @toolbox[rand(0..2)]
    @they = @toolbox[rand(0..2)]

    @we_play_scissors = @toolbox[0]
    @they_scissors = "They played scissors!"
    @we_scissors = "We played scissors!"
  
    @they_paper = "They played paper!"
    @we_paper = "We played paper!"
  
    @they_rock = "They played rock!"
    @we_rock = "We played rock!"
  
    @win = "We won!"
    @lose = "We lost!"
    @draw = "We tied!"
  

    erb(:scissors)


end

get("/paper") do

    @toolbox = ["paper", "rock", "scissors"]

    @we = @toolbox[rand(0..2)]
    @they = @toolbox[rand(0..2)]

    @they_scissors = "They played scissors!"
    @we_scissors = "We played scissors!"
  
    @we_play_paper = @toolbox[0]
    @they_paper = "They played paper!"
    @we_paper = "We played paper!"
  
    @they_rock = "They played rock!"
    @we_rock = "We played rock!"
  
    @win = "We won!"
    @lose = "We lost!"
    @draw = "We tied!"
  

    erb(:paper)
end


get("/rock") do

  @toolbox = ["rock", "scissors", "paper"]

  @we = @toolbox[rand(0..2)]
  @they = @toolbox[rand(0..2)]

  @we_scissors = "We played scissors!"
  @they_scissors = "They played scissors!"

  
  @we_paper = "We played paper!"
  @they_paper = "They played paper!"
  
  @we_play_rock = @toolbox[0]
  @we_rock = "We played rock!"
  @they_rock = "They played rock!"
  

  @win = "We won!"
  @lose = "We lost!"
  @draw = "We tied!"

  erb(:rock)


end 
