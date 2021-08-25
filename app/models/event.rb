class Event < ApplicationRecord
  belongs_to :user
  has_one :chatroom
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  after_create :initialize_chat

  private

  def initialize_chat
    Chatroom.create(event: self)
  end

end
