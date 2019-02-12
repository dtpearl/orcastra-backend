class AddRoundIdToBurns < ActiveRecord::Migration[5.2]
  def change
    add_column :burns, :round_id, :integer
  end
end
