class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :location
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
