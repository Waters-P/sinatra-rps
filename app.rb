require "sinatra"
require "sinatra/reloader"

get("/") do

  "
  <h1>Welcome to your Sinatra App!</h1>

  "
  
  erb(:mountains)
  
end



get("/Play Scissors") do

    @toolbox = ["scissors", "paper", "rock"]

    @we = @toolbox[rand(0..2)]
    @they = @toolbox[rand(0..2)]

    @win = " Winner. They used #{@they} and we used #{@we}."
    @lose = " Depricated. They used #{@they} and we used #{@we}."
    @draw = " Tie. They used #{@they} and we used #{@we}."

    erb(:scissors)


end

get("/Play Paper") do

    @toolbox = ["paper", "rock", "scissors"]

    @we = @toolbox[rand(0..2)]
    @they = @toolbox[rand(0..2)]

    @win = " Winner. They used #{@they} and we used #{@we}."
    @lose = " Depricated. They used #{@they} and we used #{@we}."
    @draw = " Tie. They used #{@they} and we used #{@we}."

    erb(:paper)
end
