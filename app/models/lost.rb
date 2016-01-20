class Lost < ActiveRecord::Base

  belongs_to  :category
  belongs_to  :user
  has_many :comments, :as => :commentable

  validates_presence_of :title

  mount_uploader :lost_img, StuffImageUploader

end
