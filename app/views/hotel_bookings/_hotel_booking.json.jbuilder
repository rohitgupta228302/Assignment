json.extract! hotel_booking, :id, :name, :address, :phoneno, :created_at, :updated_at
json.url hotel_booking_url(hotel_booking, format: :json)
