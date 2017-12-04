class TechnologyPost < ApplicationRecord
  belongs_to :Technology
  belongs_to :User
end
