class CompanyReview < ActiveRecord::Base
  belongs_to :company
  belongs_to :user

  validates_presence_of [:description, :company_id, :user_id, :rating]
end
