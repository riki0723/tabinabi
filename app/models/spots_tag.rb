class SpotsTag

  include ActiveModel::Model
  attr_accessor :title, :text, :image, :area_id, :user_id, :name

  with_options presence: true do
    validates :title, :text,:image
    validates :area_id, numericality: { other_than: 1 }
    validates :name
  end

  def save
    spot = Spot.create(title: title, text: text, image:image, area_id:area_id, user_id:user_id)

    # tag_list = Tag.name.split(nil)
    # tag = Tag.where(name: tag_list).first_or_initialize
    tag = Tag.where(name: name).first_or_initialize
    tag.save

    SpotTagRelation.create(spot_id: spot.id, tag_id: tag.id)
  end

  
  
end