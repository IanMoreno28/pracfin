class CreateTransmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :transmissions do |t|
      t.date :date
      t.integer :pnumber

      t.timestamps
    end
  end
end
