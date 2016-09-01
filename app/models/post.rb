class Post < ApplicationRecord
	belongs_to :user
	validates :description, presence: true, length: {maximum: 60}
end
