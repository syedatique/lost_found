class Found < ActiveRecord::Base
  
  belongs_to  :category
  belongs_to  :user

  validates_presence_of :title

  mount_uploader :found_img, StuffImageUploader
end
