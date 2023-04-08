class ConferenceSerializer < ActiveModel::Serializer
  attributes :id, :name, :short_name, :reputation
  has_many :teams
end
