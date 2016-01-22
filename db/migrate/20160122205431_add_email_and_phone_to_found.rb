class AddEmailAndPhoneToFound < ActiveRecord::Migration
  def change
    add_column :founds, :email, :string
    add_column :founds, :phone, :string
  end
end
