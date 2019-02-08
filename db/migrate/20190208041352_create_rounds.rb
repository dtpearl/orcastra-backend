class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.integer :game_id
      t.integer :number
      t.integer :instance_id
      t.integer :winner_id
      t.integer :master_id
      t.integer :winning_card_id

      t.timestamps
    end
  end
end
