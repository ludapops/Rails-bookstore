class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :book_id
      t.text :title
      t.text :desctiption
      t.integer :price
      t.datetime :date
      t.timestamps null: false
    end
  end
end
