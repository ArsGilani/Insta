class Post < ApplicationRecord
	belongs_to :user
	has_attached_file :image, styles: { medium: "600x300>" }, default_url: "/images/:style/missing.jpg"

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	
	validates :description, presence: true, length: {maximum: 60}
end
