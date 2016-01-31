class AddSearchCategoryIdToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :search_category_id, :integer
  end
end
