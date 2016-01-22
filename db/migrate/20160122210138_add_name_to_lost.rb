class AddNameToLost < ActiveRecord::Migration
  def change
    add_column :losts, :name, :string
  end
end
