class ProductReview < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  #validates_presence_of [:description, :product_id, :user_id, :rating]
  validates :title, :description, :product_id, :user_id, :rating, presence: true
end
