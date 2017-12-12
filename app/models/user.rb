class User < ApplicationRecord
  has_secure_password
  has_many :personal_posts
end
