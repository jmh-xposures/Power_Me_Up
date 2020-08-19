class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :power

  validates :comment, presence: true
  
  def accepted!
    self.status = true     
  end

  def declined!
    self.status = true     
  end
  
end
