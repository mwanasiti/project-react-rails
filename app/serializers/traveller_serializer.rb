class TravellerSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :mobile, :id_passport, :gender
end
