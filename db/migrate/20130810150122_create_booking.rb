class CreateBooking < ActiveRecord::Migration
  def up
    create_table :bookings do |t|   
      t.references :hotel, :null => false
      t.references :user, :null => false
      t.datetime :travel_from_date, :null => false
      t.datetime :travel_to_date, :null => false
      t.string :confirmation_number, :null => false
    end
  end

  def down
    drop_table :bookings
  end
end
