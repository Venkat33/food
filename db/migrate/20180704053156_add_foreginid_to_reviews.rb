class AddForeginidToReviews < ActiveRecord::Migration[5.1]
  def change
      add_column :reviews, :fooditem_id, :integer
      add_column :reviews, :restuarant_id, :integer
  end
end
