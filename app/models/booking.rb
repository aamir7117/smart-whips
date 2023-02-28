class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :rental_start, :rental_end, presence: true
end
