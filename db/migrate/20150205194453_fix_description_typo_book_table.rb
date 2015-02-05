class FixDescriptionTypoBookTable < ActiveRecord::Migration
  def change
  	rename_column :books, :desctiption, :description
  end
end
