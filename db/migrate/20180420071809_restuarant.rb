class Restuarant < ActiveRecord::Migration[5.1]
  def change

    create_table :restuarant do |t|
      t.string :tittle
      t.string :address
      t.string :contact
      t.timestamps
    end
  end
end
