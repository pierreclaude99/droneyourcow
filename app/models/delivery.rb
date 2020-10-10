class Delivery < ApplicationRecord
  belongs_to :user
  belongs_to :drone
  validates :delivery_time, :delivery_address, :weight, presence: true
end
