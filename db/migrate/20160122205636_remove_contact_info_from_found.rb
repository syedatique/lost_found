class RemoveContactInfoFromFound < ActiveRecord::Migration
  def change
    remove_column :founds, :contact_info, :string
  end
end
