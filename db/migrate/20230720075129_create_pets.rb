class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name,null: false
      t.integer :gender
      t.string :kind
      t.date :birthday
      t.text :image
      t.integer :user_id
      t.timestamps
    end
  end
end
