class Drone < ApplicationRecord
  belongs_to :user
  validates :model, :autonomy, :maximum_distance, :carry_capacity, :delivery_price, presence: true
  has_many :deliveries
  has_one_attached :photo
end
