class Experience < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  has_many :bookings
end

