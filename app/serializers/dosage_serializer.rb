class DosageSerializer
  include JSONAPI::Serializer
  attributes :amount, :start_date, :end_date, :user_id, :medicine_id
  belongs_to :user
  belongs_to :medicine
end
