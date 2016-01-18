class Found < ActiveRecord::Base
  
  belongs_to  :category
  belongs_to  :user

  has_many :comments, :as => :commentable
  # , dependent: :destroy

  validates_presence_of :title

  mount_uploader :found_img, StuffImageUploader


  # accepts_nested_attributes_for :comments,
                                  # reject_if:lambda { |attrs|
                                  #   attrs.all? { |key, value| value.blank? }
                                  # },
                                  # allow_destroy:true

  # def with_blank_comment
  #   comments.build
  #   self
  # end

end
