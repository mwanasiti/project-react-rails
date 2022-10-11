class UserProfileSerializer < ActiveModel::Serializer
  attributes :name, :password

  def id
    self.object.traveller.id
  end

  def first_name
    self.object.traveller.name
  end

  def last_name
    self.object.traveller.password
  end

end
