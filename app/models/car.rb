class Car < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :model, :photo, :description, :price, :location, presence: true
end
