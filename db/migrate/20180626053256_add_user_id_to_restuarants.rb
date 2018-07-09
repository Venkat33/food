class AddUserIdToRestuarants < ActiveRecord::Migration[5.1]
  def change
    add_column :restuarants, :user_id, :integer 
  end
end
