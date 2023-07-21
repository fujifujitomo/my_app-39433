class CreateWrites < ActiveRecord::Migration[7.0]
  def change
    create_table :writes do |t|
      t.integer :icon
      t.date :input_date
      t.string :memo
      t.string :schedule
      t.timestamps
    end
  end
end
