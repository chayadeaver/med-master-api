class JournalSerializer
  include JSONAPI::Serializer
  attributes :date, :entry, :user
end
