class Event < ApplicationRecord
  belongs_to :user
  has_many :join_requests, dependent: :destroy
  has_one :chatroom, dependent: :destroy
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  after_create :initialize_chat

  private

  def initialize_chat
    Chatroom.create(event: self)
  end
end
