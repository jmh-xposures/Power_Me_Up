class Power < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  has_one_attached :photo

  validates :name, :short_description, :long_description, :price, presence: true
end
