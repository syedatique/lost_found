class AddFoundKeywordsToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :found_keywords, :string
  end
end
