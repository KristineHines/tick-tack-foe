get '/board/:challenger_id' do
  if current_user
    @challenger = User.find(params[:challenger_id])
    erb :board
  else
    redirect '/sessions/new'
  end
end




post "/changeboard" do
  p params
end
