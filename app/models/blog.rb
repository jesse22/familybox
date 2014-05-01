class Blog < ActiveRecord::Base
  
  belongs_to :user
  
  validates :user_id, presence: true
  
  validates :post, length: { minimum: 10 }, presence: true
  #For adding image to blog post
  #attr_accessible :image
  mount_uploader :image, ImageUploader
end
