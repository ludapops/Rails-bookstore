class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.text :review 
      t.integer :rating

      t.timestamps null: false
    end
  end
end
