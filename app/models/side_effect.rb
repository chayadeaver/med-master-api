class SideEffect < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :medicines, optional: true
  validates :comments, :date, presence: true

end
