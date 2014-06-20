class CreateResponseTimeslotLocations < ActiveRecord::Migration
  def change
    create_table :response_timeslot_locations do |t|
      t.integer :response_timeslot_id
      t.integer :event_location_id
      t.integer :preference

      t.timestamps
    end
  end
end
