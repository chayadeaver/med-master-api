class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :medicines, :dosages, :journals 
end
