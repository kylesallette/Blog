class User < ApplicationRecord
  has_secure_password
  
  has_many :articles

  before_save { self.email = email.downcase}

  validates_presence_of :username, :email
  validates_uniqueness_of :username
#  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i



end
