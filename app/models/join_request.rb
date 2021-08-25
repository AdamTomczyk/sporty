class JoinRequest < ApplicationRecord
  belongs_to :user
  belongs_to :event
  enum status: [:pending, :accepted, :rejected] # accessing with index
end
