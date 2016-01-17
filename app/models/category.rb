class Category < ActiveRecord::Base
  has_many :losts
  has_many :founds 

  validates_presence_of :name

  mount_uploader :category_img, StuffImageUploader
end
