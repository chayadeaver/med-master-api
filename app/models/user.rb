class User < ApplicationRecord

  has_many :dosages
  has_many :side_effects
  has_many :medicines, through: :side_effects
  has_many :medicines, through: :dosages

  has_secure_password
  has_secure_password :recovery_password, validations: false

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
