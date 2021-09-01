class Event < ApplicationRecord
  belongs_to :user
  has_many :join_requests, dependent: :destroy
  has_one :chatroom, dependent: :destroy
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  after_create :initialize_chat


  def participants
    User.includes(:join_requests).where(join_requests: {event: self, status: "accepted"})
  end

  def attendees
    # returns accepted people
    self.join_requests.where(status: "accepted")

  end

  CATEGORY = ["Basketball", "Tennis", "Soccer"]

  private

  def initialize_chat
    Chatroom.create(event: self)
  end
end
