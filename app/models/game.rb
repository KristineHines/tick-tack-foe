class Game < ActiveRecord::Base
 scope :open_games, where(:player2_id => nil)

  
  def player1
    User.find(self.player1_id)
  end

  def player2
    User.find(self.player2_id)
  end


  def add_x
  end

  def add_o
  end
  
  def finished
  end

  def check_row
  end

  def check_column
  end

  def check_diagonal
  end

  def check_board
  end

  def won?
    # true or false
  end

end
