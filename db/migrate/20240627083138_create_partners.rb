class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.string :favorite_aspect, null: false
      t.string :calm_activity, null: false
      t.string :initial_attraction, null: false
      t.string :comforting_action, null: false
      t.string :disagreement_trigger, null: false
      t.string :appearance_concern, null: false
      t.string :favorite_date, null: false
      t.string :ideal_relationship, null: false
      t.string :affection_expression, null: false
      t.references :torisetsu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
