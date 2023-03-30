class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :eventopic_id
      t.integer :eventdate_id
      t.integer :profile_id
      t.integer :availability_id
      t.integer :numero
      t.integer :prezzo_eventdate
      t.integer :prezzo_totale
      t.integer :booking_id
      t.boolean :caso_studio
      t.integer :metodo_pagamento

      t.timestamps
    end
  end
end
