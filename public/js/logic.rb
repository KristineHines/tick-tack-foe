
def player1finished?(board_array)
  @win_cases = ["021", "345", "678", "036", "147", "258", "642", "048"]

  @player_symbol = "X"
  @win_cases.each do |index|
    index = index.split('')
    if @board_array[index[0].to_i] == @player_symbol && 
      @board_array[index[1].to_i] == @player_symbol && 
      @board_array[index[2].to_i] == @player_symbol
      @result =  "Player 1  is a Winner" 
    else
      puts "loser"
    end
  end
  @result 
end


@board_array  = ["X", "-", "X", "-", "-", "-","-", "X", "X"] 

finished?(@board_array)

