class Post < ActiveRecord::Base
  has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
  belongs_to :user
end
