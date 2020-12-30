class Spot < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :user
  has_one_attached :image
  has_many :spot_tag_relations
  has_many :tags, through: :spot_tag_relations
  
  validates :name, :text, presence: true
  validates :area_id, numericality: { other_than: 1 } 

end
