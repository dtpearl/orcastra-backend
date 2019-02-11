class AddPlayedToBurns < ActiveRecord::Migration[5.2]
  def change
    add_column :burns, :played, :boolean
  end
end
