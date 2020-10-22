class Drone < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [ :address ],
    using: {
      tsearch: { prefix: true } 
    }

  belongs_to :user
  validates :model, :autonomy, :maximum_distance, :carry_capacity, :delivery_price, presence: true
  has_many :deliveries
  has_one_attached :photo
  
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
