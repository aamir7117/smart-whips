class Car < ApplicationRecord
  belongs_to :user

  validates :model, :description, :price, :location, presence: true
end
