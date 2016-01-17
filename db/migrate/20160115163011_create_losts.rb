class CreateLosts < ActiveRecord::Migration
  def change
    create_table :losts do |t|
      t.string :lost_img
      t.string :title
      t.datetime :lost_date
      t.string :location
      t.text :description
      t.string :reward
      t.string :contact_info
      t.integer  :category_id

      t.timestamps null: false
    end
  end
end
