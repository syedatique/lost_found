class AddUserIdToLost < ActiveRecord::Migration
  def change
    add_column :losts, :user_id, :integer
  end
end
