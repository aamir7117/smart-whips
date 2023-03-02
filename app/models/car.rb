class Car < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
   has_one_attached :photo
   belongs_to :user
   has_many :bookings, dependent: :destroy
  # validates :model, :photo, :description, :price, :location, presence: true
end
