class AddFoundDescriptionToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :found_description, :text
    add_column :searches, :found_name, :integer
    add_column :searches, :found_email, :integer
    add_column :searches, :found_phone, :integer
    add_column :searches, :found_title, :integer
    add_column :searches, :found_location, :integer
    add_column :searches, :found_start_date, :datetime
    add_column :searches, :found_end_date, :datetime
  end
end
