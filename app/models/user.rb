class User < ActiveRecord::Base
  attr_accessor :password

  has_secure_password validations: false
  validates :password, presence: true,  length: { minimum: 6 }
  validates_presence_of :username
  validates :email, email: true
  validates_uniqueness_of :username

  def self.authenticate email, password
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    end
  end
end
