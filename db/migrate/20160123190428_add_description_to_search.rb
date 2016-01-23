class AddDescriptionToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :description, :text
  end
end
