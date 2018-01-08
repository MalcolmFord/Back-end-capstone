class UpcomingEvent < ApplicationRecord
  belongs_to :User
  belongs_to :Technology
  has_many :Attending_event
end
