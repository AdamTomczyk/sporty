class JoinRequest < ApplicationRecord
  belongs_to :user
  belongs_to :event
  enum status: [:pending, :accepted, :rejected] # accessing with index
  validates :event, uniqueness: { scope: :user,
    message: "You cannot join this event twice" }
end
