get "/game/create" do
  @game = Game.create(player1_id: current_user.id)

  erb :game

end



