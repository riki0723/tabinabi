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

    tags = Tag.create(name: name)

    tag_lists = tags.name.split(nil)
    # 半角スペースで区切る

    tag_listsry = tag_lists.uniq
    # 同じデーターは返さない






    tag_listsry.each do|tag_list|
        tag = Tag.where(name: tag_list).first_or_initialize
        tag.save
    
    SpotTagRelation.create(spot_id: spot.id, tag_id: tag.id)
    end
  end


  
  
end