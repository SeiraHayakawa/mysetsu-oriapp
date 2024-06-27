class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|

      t.string :favorite_subject, null: false
      t.string :favorite_subject_reason, null: false
      t.string :least_favorite_subject, null: false
      t.string :least_favorite_subject_reason, null: false
      t.string :teacher_pet, null: false
      t.string :talking_with_friends, null: false
      t.string :group_activities, null: false
      t.string :lunch_preference, null: false
      t.string :disliked_school_activities, null: false
      t.string :best_friend, null: false
      t.string :favorite_school_event, null: false
      t.string :favorite_place_at_school, null: false
      t.references :torisetsu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
