class User < ApplicationRecord

  has_many :dosages
  has_many :medicines, through: :dosages



  has_secure_password :recovery_password, validations: false


  has_many :journals

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
