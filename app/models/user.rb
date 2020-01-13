class User < ApplicationRecord
  has_secure_password

  has_many :events

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :password_confirmation, presence: true
end
