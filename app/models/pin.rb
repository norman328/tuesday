

class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :image_remote_url, :remote_file_url

  validates :description, presence: true #other validations can be found on ruby on railsite such as legnth just sep by comma
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  						content_type: {content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
  						size: { less_than: 5.megabytes}  

  belongs_to :user #look for rails associations to figure out more associations

  has_attached_file :image

  def image_remote_url=(url_value) 
  	self.image = URI.parse(url_value) unless url_value.blank?
  	super
  end

end
