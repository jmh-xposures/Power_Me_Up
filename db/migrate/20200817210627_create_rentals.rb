class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.text :comment
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.references :power, null: false, foreign_key: true

      t.timestamps
    end
  end
end
