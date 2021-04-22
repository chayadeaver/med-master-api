class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :side_effects, :dosages
end
