class Messageboard < ApplicationRecord
  belongs_to :user
  belongs_to :technology
end
