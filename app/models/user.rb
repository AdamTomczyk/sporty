class User < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :join_requests, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews_as_reviewer, class_name: "Review", foreign_key: :reviewer_id
  has_many :reviews_as_reviewee, class_name: "Review", foreign_key: :reviewee_id

  def reliability
    total = 0
    reviews_as_reviewee.each do |review|
      total += review.score
    end
    total_reviews = reviews_as_reviewee.count
    average = total.fdiv(total_reviews)
    (average / 5) * 100
  end
end
