class CreateFounds < ActiveRecord::Migration
  def change
    create_table :founds do |t|
      t.string :found_img
      t.string :title
      t.datetime :found_date
      t.string :location
      t.text :description
      t.string :contact_info
      t.integer  :category_id

      t.timestamps null: false
    end
  end
end
