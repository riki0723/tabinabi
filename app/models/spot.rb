class Spot < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :user
  has_one_attached :image
  
  validates :name, :text, presence: true

end
