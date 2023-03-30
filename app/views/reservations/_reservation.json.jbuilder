json.extract! reservation, :id, :eventopic_id, :eventdate_id, :profile_id, :availability_id, :numero, :prezzo_eventdate, :prezzo_totale, :booking_id, :caso_studio, :metodo_pagamento, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
