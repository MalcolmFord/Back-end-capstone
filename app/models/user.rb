class User < ApplicationRecord
  has_secure_password
  has_many :personal_posts
  has_many :Attending_events
  has_many :Upcoming_events, through: :Attending_events
end
