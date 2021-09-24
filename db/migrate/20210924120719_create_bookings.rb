class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_at
      t.datetime :finish_at
      t.references :user, foreign_key: true
      t.references :agent, foreign_key: true

      t.timestamps
    end
  end
end
