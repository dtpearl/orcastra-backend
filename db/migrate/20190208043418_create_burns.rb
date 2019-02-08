class CreateBurns < ActiveRecord::Migration[5.2]
  def change
    create_table :burns do |t|
      t.integer :game_id
      t.integer :response_id

      t.timestamps
    end
  end
end
