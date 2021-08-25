class Event < ApplicationRecord
  belongs_to :user
  has_one :chatroom

  after_create :initialize_chat

  private

  def initialize_chat
    Chatroom.create(event: self)
  end
end
