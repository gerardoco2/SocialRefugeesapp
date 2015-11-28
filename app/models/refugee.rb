class Refugee < ActiveRecord::Base

	
  has_attached_file :picture, styles: { big: "300x450>", medium: "200x250>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

end
