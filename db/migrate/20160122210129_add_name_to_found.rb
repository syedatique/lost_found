class AddNameToFound < ActiveRecord::Migration
  def change
    add_column :founds, :name, :string
  end
end
