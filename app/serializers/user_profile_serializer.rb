class UserProfileSerializer < ActiveModel::Serializer
  attributes :name, :password

  def id
    self.object.user_profile.id
  end

  def name
    self.object.user_profile.name
  end

  def password
    self.object.user_profile.password
  end

end
