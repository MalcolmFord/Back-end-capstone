class Messageboard < ApplicationRecord
  belongs_to :User
  belongs_to :Technology
end
