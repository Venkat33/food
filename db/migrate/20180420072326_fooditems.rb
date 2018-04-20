class Fooditems < ActiveRecord::Migration[5.1]
  def change
    create_table :fooditems do |t|
      t.string :itemname
      t.text :description
      t.integer :user_id
      t.string :image_file_name
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
  end
end
end
