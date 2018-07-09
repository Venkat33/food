class Restuarant < ApplicationRecord
belongs_to :user
  has_many :restuarants
validates :user_id, presence: true
end
