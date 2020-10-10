class AddUserIdToMylives < ActiveRecord::Migration[6.0]
  def change
    add_column :mylives, :user_id, :integer
    add_column :properties, :user_id, :integer
    add_column :requests, :user_id, :integer
    add_column :messages, :user_id, :integer
  end
end
