class User < ApplicationRecord
  before_create do self[:api_key] = api_key end

  validates_presence_of :email, :name, :password, :api_key
  validates_uniqueness_of :email

  has_secure_token :api_key
  has_secure_password 
  
  def api_key
    SecureRandom.hex(12)
  end
end
