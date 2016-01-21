class Lost < ActiveRecord::Base

  belongs_to  :category
  belongs_to  :user

  validates_presence_of :title

  mount_uploader :lost_img, StuffImageUploader

end
