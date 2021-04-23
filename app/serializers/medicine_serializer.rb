class MedicineSerializer
  include JSONAPI::Serializer
  attributes :name, :doctors_name, :dosages
end
