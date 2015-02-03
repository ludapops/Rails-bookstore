class AddReviewField < ActiveRecord::Migration
   
   def change
  	add_column :books, :review, :text
  end
end
