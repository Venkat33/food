class Restuarants < ActiveRecord::Migration[5.1]
  def change
    create_table :restuarants do |t|
      t.string :tittle
      t.string :address
      t.integer :contact
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
      end
  end
end
