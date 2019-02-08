class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.text :name
      t.boolean :sfw

      t.timestamps
    end
  end
end
