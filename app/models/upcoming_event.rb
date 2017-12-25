class UpcomingEvent < ApplicationRecord
  belongs_to :User
  belongs_to :Technology
end
