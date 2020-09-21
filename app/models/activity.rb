class Activity < ApplicationRecord
  has_many :romantic_dates
  has_many :users, through: :romantic_dates
end
