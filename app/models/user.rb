class User < ApplicationRecord
validates :username, presence: true, uniqueness: { case_sensitive: false },
length: { minimum: 3, maximum: 25}

validates :email, presence:true, length: {minimum: 10, maximum: 105},
uniqueness: {case_sensitive: false}
has_secure_password
end
