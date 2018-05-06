  class Medias < ActiveRecord::Migration[5.1]
          def change
            create_table :medias do |t|
              t.string :username
              t.text :description
              t.string :user_id
              t.datetime :created_at
              t.datetime :updated_at
              t.timestamps
            end
          end
        end
