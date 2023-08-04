class CreateWrites < ActiveRecord::Migration[7.0]
  def change
    create_table :writes do |t|
      t.string :icon
      t.datetime :input_date
      t.string :memo
      t.string :schedule
      t.references :pet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
