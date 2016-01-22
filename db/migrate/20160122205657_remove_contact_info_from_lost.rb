class RemoveContactInfoFromLost < ActiveRecord::Migration
  def change
    remove_column :losts, :contact_info, :string
  end
end
