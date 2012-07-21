class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :password, :password_confirmation
  validates_uniqueness_of :email
  has_secure_password
end
