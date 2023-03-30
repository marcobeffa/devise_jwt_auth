require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_reservation_url
    assert_response :success
  end

  test "should create reservation" do
    assert_difference("Reservation.count") do
      post reservations_url, params: { reservation: { availability_id: @reservation.availability_id, booking_id: @reservation.booking_id, caso_studio: @reservation.caso_studio, eventdate_id: @reservation.eventdate_id, eventopic_id: @reservation.eventopic_id, metodo_pagamento: @reservation.metodo_pagamento, numero: @reservation.numero, prezzo_eventdate: @reservation.prezzo_eventdate, prezzo_totale: @reservation.prezzo_totale, profile_id: @reservation.profile_id } }
    end

    assert_redirected_to reservation_url(Reservation.last)
  end

  test "should show reservation" do
    get reservation_url(@reservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservation_url(@reservation)
    assert_response :success
  end

  test "should update reservation" do
    patch reservation_url(@reservation), params: { reservation: { availability_id: @reservation.availability_id, booking_id: @reservation.booking_id, caso_studio: @reservation.caso_studio, eventdate_id: @reservation.eventdate_id, eventopic_id: @reservation.eventopic_id, metodo_pagamento: @reservation.metodo_pagamento, numero: @reservation.numero, prezzo_eventdate: @reservation.prezzo_eventdate, prezzo_totale: @reservation.prezzo_totale, profile_id: @reservation.profile_id } }
    assert_redirected_to reservation_url(@reservation)
  end

  test "should destroy reservation" do
    assert_difference("Reservation.count", -1) do
      delete reservation_url(@reservation)
    end

    assert_redirected_to reservations_url
  end
end
