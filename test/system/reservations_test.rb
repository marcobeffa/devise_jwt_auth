require "application_system_test_case"

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test "visiting the index" do
    visit reservations_url
    assert_selector "h1", text: "Reservations"
  end

  test "should create reservation" do
    visit reservations_url
    click_on "New reservation"

    fill_in "Availability", with: @reservation.availability_id
    fill_in "Booking", with: @reservation.booking_id
    check "Caso studio" if @reservation.caso_studio
    fill_in "Eventdate", with: @reservation.eventdate_id
    fill_in "Eventopic", with: @reservation.eventopic_id
    fill_in "Metodo pagamento", with: @reservation.metodo_pagamento
    fill_in "Numero", with: @reservation.numero
    fill_in "Prezzo eventdate", with: @reservation.prezzo_eventdate
    fill_in "Prezzo totale", with: @reservation.prezzo_totale
    fill_in "Profile", with: @reservation.profile_id
    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "should update Reservation" do
    visit reservation_url(@reservation)
    click_on "Edit this reservation", match: :first

    fill_in "Availability", with: @reservation.availability_id
    fill_in "Booking", with: @reservation.booking_id
    check "Caso studio" if @reservation.caso_studio
    fill_in "Eventdate", with: @reservation.eventdate_id
    fill_in "Eventopic", with: @reservation.eventopic_id
    fill_in "Metodo pagamento", with: @reservation.metodo_pagamento
    fill_in "Numero", with: @reservation.numero
    fill_in "Prezzo eventdate", with: @reservation.prezzo_eventdate
    fill_in "Prezzo totale", with: @reservation.prezzo_totale
    fill_in "Profile", with: @reservation.profile_id
    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "should destroy Reservation" do
    visit reservation_url(@reservation)
    click_on "Destroy this reservation", match: :first

    assert_text "Reservation was successfully destroyed"
  end
end
