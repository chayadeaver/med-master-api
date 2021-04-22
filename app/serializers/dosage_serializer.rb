class DosageSerializer
  include JSONAPI::Serializer
  attributes :amount, :startDate, :endDate, :user_id, :medicine_id
  belongs_to :user
  belongs_to :medicine
end
