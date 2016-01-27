class AddFoundDescriptionToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :found_description, :text
    add_column :searches, :found_name, :string
    add_column :searches, :found_email, :string
    add_column :searches, :found_phone, :string
    add_column :searches, :found_title, :string
    add_column :searches, :found_location, :string
    add_column :searches, :found_start_date, :datetime
    add_column :searches, :found_end_date, :datetime
  end
end
