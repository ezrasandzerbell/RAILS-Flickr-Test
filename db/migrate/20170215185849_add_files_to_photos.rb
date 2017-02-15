class AddFilesToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_attachment :photos, :imgfile
  end
end
