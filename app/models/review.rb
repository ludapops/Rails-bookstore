class Review < ActiveRecord::Base
	belongs_to :book

	validates :rating, presence: true
	validates :review, presence: true 
	validates :rating, {numericality: true}
	validates_associated :book

end
