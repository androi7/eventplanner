class User < ApplicationRecord
  has_secure_password

  has_and_belongs_to_many :events
  has_many :comments

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :password, presence: true
  validates :password, confirmation: { case_sensitive: true }
end
