class AddUserIdToBurns < ActiveRecord::Migration[5.2]
  def change
    add_column :burns, :user_id, :integer
  end
end
