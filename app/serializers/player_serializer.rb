class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :year, :shooting, :playmaking, :rebounding, :defense, :physical, :team_id
end
