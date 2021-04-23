class Dosage < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :medicine, optional: true
  validates :amount, :startDate, presence: true
end
