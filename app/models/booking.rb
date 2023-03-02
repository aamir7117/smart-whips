class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :rental_start, :rental_end, presence: true

  def number_of_days
    (rental_end - rental_start).to_i
  end

  def total_price
    car.price * number_of_days
  end
end
