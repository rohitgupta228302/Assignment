class CreateHotelBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :hotel_bookings do |t|
      t.string :name
      t.string :address
      t.integer :phoneno

      t.timestamps
    end
  end
end
