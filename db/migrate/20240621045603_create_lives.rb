class CreateLives < ActiveRecord::Migration[7.0]
  def change
    create_table :lives do |t|
      
      t.string :life_morning, null: false
      t.string :life_breakfast, null: false
      t.string :life_breakfast_weight, null: false
      t.string :life_cry, null: false
      t.string :life_crytime, null: false
      t.string :life_anger, null: false
      t.string :life_battle, null: false
      t.string :life_sleep, null: false
      t.references :torisetsu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
