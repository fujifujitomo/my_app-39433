class CreateWrites < ActiveRecord::Migration[7.0]
  def change
    create_table :writes do |t|
      t.string :icon
      t.datetime :start_time
      t.string :memo
      t.string :schedule

      
      t.timestamps
    end
  end
end
