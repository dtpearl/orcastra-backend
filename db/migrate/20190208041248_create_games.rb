class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :pin
      t.text :name
      t.integer :deck_id
      t.integer :user_id

      t.timestamps
    end
  end
end
