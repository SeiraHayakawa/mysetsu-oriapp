class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|

      t.string :work_like, null: false
      t.string :work_concentration, null: false
      t.string :work_incandescent, null: false
      t.string :work_fine_work, null: false
      t.string :work_heavy_lifting, null: false
      t.string :work_communication, null: false
      t.string :work_overtime, null: false
      t.string :work_party, null: false
      t.string :work_party_owner, null: false
      t.references :torisetsu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
