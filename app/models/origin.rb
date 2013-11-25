class Origin < ActiveRecord::Base
  belongs_to :station
  has_many :trips

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

end
