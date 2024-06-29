class CreateHobbies < ActiveRecord::Migration[7.0]
  def change
    create_table :hobbies do |t|

      t.string :hobby_name, null: false
      t.string :frequency, null: false
      t.string :no_time_effect, null: false
      t.string :satisfaction_moment, null: false
      t.string :immersion_effect, null: false
      t.string :start_time, null: false
      t.string :fatigue_effect, null: false
      t.string :inability_effect, null: false
      t.references :torisetsu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
