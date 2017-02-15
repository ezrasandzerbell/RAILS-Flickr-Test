class Tag < ApplicationRecord
  belongs_to :photo

  validates :name, :presence => true

end
