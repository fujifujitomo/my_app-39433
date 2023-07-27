class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name,null: false
      t.string :gender
      t.string :kind
      t.date :birthday
      t.text :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
