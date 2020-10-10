class Review < ApplicationRecord
  belongs_to :user
  belongs_to :delivery
  validates :rating, :content, presence: true
end
