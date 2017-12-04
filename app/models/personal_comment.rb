class PersonalComment < ApplicationRecord
  belongs_to :Personal_post
  belongs_to :User
end
