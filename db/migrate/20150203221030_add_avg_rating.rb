class AddAvgRating < ActiveRecord::Migration
  def change
  	add_column :books, :avg_rating, :integer
  end
end
