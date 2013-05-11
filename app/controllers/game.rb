get "/game/create" do
  @game = Game.create(:player1_id => current_user.id, :board => "---------")

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

post "/game/:game_id/update" do 
  @game = Game.find(params[:game_id].to_i)
  # puts @game.inspect
  # puts params.inspect
  # updated_board = @game.board
  if @game.player1_id == params[:player].to_i
     # updated_board[params[:cell_to_change].to_i] = "X"
     @game.board[params[:cell_to_change].to_i] = "X"
# updated_board.insert(7,"x")    
    # updated_board="----x----"
  else
    # updated_board[5] = "O"
     # updated_board="o"
  end
   # p updated_board.class
  # @game.board = updated_board
  # @game.update_attributes(player2_id: 15)
   @game.update_attributes(:board => @game.board)
  # @game1=Game.create(:board => updated_board)
  # @game1.update_attribute(:board, "This works?")
  # binding.pry
  p "hello"
  p @game.inspect
  @game.save!

  p @game.board
end
