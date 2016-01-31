class CreateSearchCategories < ActiveRecord::Migration
  def change
    create_table :search_categories do |t|
      t.string :name
      

      t.timestamps null: false
    end
  end
end
