class Medicine < ApplicationRecord
  has_many :dosages
  has_many :users, through: :dosages
  validates :name, presence: true
  validates :doctors_name, presence: true
end
