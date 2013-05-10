get "/game/create" do
  @game = Game.create(player1_id: current_user.id)

  redirect "/game/#{@game.id}"

end

get "/game/join/:game_id" do
  @game = Game.find(params[:game_id])
  if current_user.id == @game.player1_id   
    @error = "You can't play yourself foo"
    erb :index
  else
    @game.update_attributes(player2_id: current_user.id)
    redirect "/game/#{@game.id}"
  end
end


get "/game/:game_id" do 
  @game = Game.find(params[:game_id])
  # @game.update_attributes(player2: )
  erb :game
end

