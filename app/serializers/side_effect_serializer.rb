class SideEffectSerializer
  include JSONAPI::Serializer
  attributes :comment, :date, :user_id, :medicine_id
  belongs_to :user
  belongs_to :medicine
end
