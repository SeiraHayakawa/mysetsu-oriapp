class CreateIntroductions < ActiveRecord::Migration[7.0]
  def change
    create_table :introductions do |t|
      t.date :birth_day, null: false
      t.string :blood_type, null: false
      t.integer :body_height, null: false
      t.string :body_weight, null: false
      t.string :favorite_food, null: false
      t.string :dislike_food, null: false
      t.string :favorite_color, null: false
      t.string :favorite_place, null: false
      t.references :torisetsu, null: false, foreign_key: true
      t.timestamps
    end
  end
end
