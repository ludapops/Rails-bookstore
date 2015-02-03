class RemoveReviewCol < ActiveRecord::Migration
  def change
  	remove_column :books, :review
  end
end
