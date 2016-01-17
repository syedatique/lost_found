class AddNameToUser < ActiveRecord::Migration
  def change
    add_column  :users, :name, :string
    add_column  :users, :username, :string
    add_column  :users, :user_img, :string
    add_column  :users, :user_location, :string

  end
end
