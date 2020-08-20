class Power < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  has_one_attached :photo

	include PgSearch::Model
  pg_search_scope :general_search,
    against: [ :name, :short_description, :long_description],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    },
    associated_against: {
      user: [ :full_name ]
    }


  validates :name, :short_description, :long_description, :price, presence: true
end
