class UserSerializer
  def self.create_user(new_user)
    {
      data:{
        id: "#{new_user.id}",
        type: "users",
        attributes: {
          name: new_user.name,
          email: new_user.email,
          api_key: new_user.api_key
        }
      }
    }
  end
end