class User < ApplicationRecord
  has_many :romantic_dates
  has_many :activities, through: :romantic_dates
  
  has_many :initiated_dates, foreign_key: :initiator_id, class_name: 'RomanticDate', dependent: :destroy

  has_many :acceptors, through: :initiated_dates

  has_many :accepted_dates, foreign_key: :acceptor_id, class_name: 'RomanticDate', dependent: :destroy
  has_many :initators, through: :accepted_dates
end