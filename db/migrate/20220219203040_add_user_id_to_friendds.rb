class AddUserIdToFriendds < ActiveRecord::Migration[7.0]
  def change
    add_column :friendds, :user_id, :integer
    add_index :friendds, :user_id
  end
end
