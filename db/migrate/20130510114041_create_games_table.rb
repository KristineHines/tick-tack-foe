class CreateGamesTable < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :board
      t.integer :player1_id
      t.integer :player2_id
      t.integer :winner_id
      t.timestamps
    end
  end
end
