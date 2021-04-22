class DosageSerializer
  include JSONAPI::Serializer
  attributes :amount, :startDate, :endDate, :user_id, :medicine_id
end
