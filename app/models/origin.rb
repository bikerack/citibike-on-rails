class Origin < ActiveRecord::Base
  belongs_to :station
  has_many :trips

  # geocoded_by :address
  # after_validation :geocode
  
end
