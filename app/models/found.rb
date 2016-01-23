class Found < ActiveRecord::Base
  
  belongs_to  :category
  belongs_to  :user

  has_many :comments, :as => :commentable
  # , dependent: :destroy

  validates_presence_of :title

  mount_uploader :found_img, StuffImageUploader

  include PgSearch
    pg_search_scope :search, :against => [:name, :location, :description], :using => {
                  :tsearch => {:prefix => true}}

end
