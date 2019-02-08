class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.integer :game_id

      t.timestamps
    end
  end
end
