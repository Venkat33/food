class AddRestuarantIdToFooditems < ActiveRecord::Migration[5.1]
  def change
    add_column :fooditems, :restuarant_id, :integer 
  end
end
