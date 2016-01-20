class Found < ActiveRecord::Base
  
  belongs_to  :category
  belongs_to  :user

  has_many :comments, :as => :commentable
  # , dependent: :destroy

  validates_presence_of :title

  mount_uploader :found_img, StuffImageUploader

end
