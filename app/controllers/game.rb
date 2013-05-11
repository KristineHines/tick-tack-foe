get "/game/create" do
  @game = Game.create(:player1_id => current_user.id, :board => "---------")

  redirect "/game/#{@game.id}"

end

get "/game/join/:game_id" do
  @game = Game.find(params[:game_id])
  if current_user
    if current_user.id == @game.player1_id   
      @error = "You can't play yourself foo"
      erb :index
    else
      @game.update_attributes(player2_id: current_user.id)
      redirect "/game/#{@game.id}"
    end
  else
    "You gotta sign in dude" 
  end
end


get "/game/:game_id" do 
  @game = Game.find(params[:game_id])
  # @game.update_attributes(player2: )
  erb :game
end

post "/game/:game_id/update" do 
  @game = Game.find(params[:game_id].to_i)
  updated_board = @game.board
  if @game.player1_id == params[:player].to_i
     updated_board[params[:cell_to_change].to_i] = "X"
  else
    updated_board[params[:cell_to_change].to_i] = "O"
  end
   @game.update_attributes(:board => updated_board)
   200
end
