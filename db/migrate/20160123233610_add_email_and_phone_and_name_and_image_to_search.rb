class AddEmailAndPhoneAndNameAndImageToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :email, :string
    add_column :searches, :phone, :string
    add_column :searches, :name, :string
    add_column :searches, :image, :string
  end
end
