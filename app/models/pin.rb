

class Pin < ActiveRecord::Base
  attr_accessible :description
  validates :description, presence: true #other validations can be found on ruby on railsite such as legnth just sep by comma
  
belongs_to :user #look for rails associations to figure out more associations
    validates :user_id, presence: true
end
