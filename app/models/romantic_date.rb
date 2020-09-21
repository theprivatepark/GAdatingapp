class RomanticDate < ApplicationRecord
  belongs_to :activity
  belongs_to :initiator, class_name: 'User'
  belongs_to :acceptor, class_name: 'User'
end
