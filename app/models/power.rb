class Power < ApplicationRecord
  belongs_to :user
  has_many :rentals

  validates :name, :short_description, :long_description, :price, presence: true
end
