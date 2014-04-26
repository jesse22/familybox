class Blog < ActiveRecord::Base
  
  belongs_to :user
  
  validates :user_id, presence: true
  
  validates :post, length: { minimum: 10 }, presence: true
  
end
