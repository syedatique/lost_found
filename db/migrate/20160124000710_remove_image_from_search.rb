class RemoveImageFromSearch < ActiveRecord::Migration
  def change
    remove_column :searches, :image, :string
  end
end
