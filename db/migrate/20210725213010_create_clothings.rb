class CreateClothings < ActiveRecord::Migration[6.1]
  def change
    create_table :clothings do |t|
      t.references :presenter, null: false, foreign_key: true
      t.references :transmission, null: false, foreign_key: true
      t.references :garment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
