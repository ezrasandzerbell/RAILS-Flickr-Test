class Tag < ApplicationRecord
  belongs_to :photo

  validates :name, :presence => true

  def findTaggedPhotos
    photos = Photo.all
    photoArray = []
    photos.each do |photo|
      photo.tags.each do |tag|
        if tag.name == self.name
        photoArray.push(photo)
        end
      end
    end
    return photoArray
  end

end
