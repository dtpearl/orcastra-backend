class AddSfwToResponse < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :sfw, :boolean
  end
end
