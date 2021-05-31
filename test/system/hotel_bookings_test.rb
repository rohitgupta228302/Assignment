require "application_system_test_case"

class HotelBookingsTest < ApplicationSystemTestCase
  setup do
    @hotel_booking = hotel_bookings(:one)
  end

  test "visiting the index" do
    visit hotel_bookings_url
    assert_selector "h1", text: "Hotel Bookings"
  end

  test "creating a Hotel booking" do
    visit hotel_bookings_url
    click_on "New Hotel Booking"

    fill_in "Address", with: @hotel_booking.address
    fill_in "Name", with: @hotel_booking.name
    fill_in "Phoneno", with: @hotel_booking.phoneno
    click_on "Create Hotel booking"

    assert_text "Hotel booking was successfully created"
    click_on "Back"
  end

  test "updating a Hotel booking" do
    visit hotel_bookings_url
    click_on "Edit", match: :first

    fill_in "Address", with: @hotel_booking.address
    fill_in "Name", with: @hotel_booking.name
    fill_in "Phoneno", with: @hotel_booking.phoneno
    click_on "Update Hotel booking"

    assert_text "Hotel booking was successfully updated"
    click_on "Back"
  end

  test "destroying a Hotel booking" do
    visit hotel_bookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hotel booking was successfully destroyed"
  end
end
