class Reviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :username
      t.string :email
      t.integer :ratinng
      t.text :description
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
  end
  end
end
