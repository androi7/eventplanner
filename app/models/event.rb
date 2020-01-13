class Event < ApplicationRecord

  belongs_to :inspiration, optional: true
  has_many :comments
  has_and_belongs_to_many :users
end
