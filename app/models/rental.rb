class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :power

  validates :comment, presence: true
end
