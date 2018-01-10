class Technology < ApplicationRecord
  belongs_to :User
  has_many :Join_technology
end
