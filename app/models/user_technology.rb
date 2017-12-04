class UserTechnology < ApplicationRecord
  belongs_to :User
  belongs_to :Technology
end
