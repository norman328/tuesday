

class Pin < ActiveRecord::Base
  attr_accessible :description
  validates :description, presence: true #other validations can be found on ruby on railsite such as legnth just sep by comma
  

    
end
