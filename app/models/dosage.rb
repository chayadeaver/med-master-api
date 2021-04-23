class Dosage < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :medicine, optional: true
  validates :amount, :start_date, presence: true
end
