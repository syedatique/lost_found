class RemoveFoundTitleFromSearch < ActiveRecord::Migration
  def change
    remove_column :searches, :found_title, :string
  end
end
