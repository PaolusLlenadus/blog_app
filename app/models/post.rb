class Post < ActiveRecord::Base
	validates :title, presence: true

	scope :user_ids, -> { where(user_id: "1") }

	belongs_to :user
	has_many :comments

end
