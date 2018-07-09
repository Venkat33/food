class User < ApplicationRecord
  has_many :restuarants

before_save{self.email = email.downcase}

validates :username, presence: true, uniqueness: { case_sensitive: false },
length: { minimum: 3, maximum: 25}

validates :email, presence:true, length: {minimum: 10, maximum: 105},
uniqueness: {case_sensitive: false}

validates_presence_of :password, :on => :create

has_secure_password
end
