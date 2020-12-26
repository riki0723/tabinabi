class Spot < ApplicationRecord
  
  validates :name, :text, :image , presence: true

  belongs_to :user
  has_one_attached :image
end
