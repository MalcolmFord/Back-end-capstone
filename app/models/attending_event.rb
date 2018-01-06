class AttendingEvent < ApplicationRecord
  belongs_to :User
  belongs_to :Upcoming_event
end
