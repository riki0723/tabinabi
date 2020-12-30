class Tag < ApplicationRecord

  has_many :spot_tag_relations
  has_many :spots, through: :tweet_tag_relations

end
