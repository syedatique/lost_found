class AddEmailAndPhoneToLost < ActiveRecord::Migration
  def change
    add_column :losts, :email, :string
    add_column :losts, :phone, :string
  end
end
