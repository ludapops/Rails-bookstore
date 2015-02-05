class Book < ActiveRecord::Base
	has_many :reviews

	def self.last_created_books(n)
		order(created_at: :desc).limit(n)
	end
end
