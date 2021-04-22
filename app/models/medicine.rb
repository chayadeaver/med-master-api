class Medicine < ApplicationRecord
  has_many :side_effects
  has_many :users, through: :side_effects
  has_many :dosages
  has_many :users, through: :medicine
  validates :name, presence: true
  validates :doctors_name, presence: true
end
