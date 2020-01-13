class Event < ApplicationRecord

  belongs_to :inspiration, optional: true
  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :users
end
