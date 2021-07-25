class CreatePresenters < ActiveRecord::Migration[6.1]
  def change
    create_table :presenters do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.integer :age

      t.timestamps
    end
  end
end
