class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.text :dealer_hand
    	t.text :player_hand

      t.timestamps
    end
  end
end
