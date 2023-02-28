class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.text :details
      t.references :car, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :rental_start
      t.date :rental_end

      t.timestamps
    end
  end
end
