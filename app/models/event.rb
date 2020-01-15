class Event < ApplicationRecord

  # Tell geocoder where to look to get the human-readable address string
  geocoded_by :address

  # Tell geocoder to actually turn the above address into a latitude
  # and longitude (by doing a lookup in a remote API)
  # any time you create or update a Event item
  after_validation :geocode

  belongs_to :inspiration, optional: true
  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :users
end
