class Photo < ApplicationRecord
  belongs_to :user
  has_attached_file :imgfile, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :imgfile, content_type: /\Aimage\/.*\z/
  validates :title, :presence => true
  validates :details, :presence => true

end
