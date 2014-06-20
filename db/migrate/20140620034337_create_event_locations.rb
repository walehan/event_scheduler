class CreateEventLocations < ActiveRecord::Migration
  def change
    create_table :event_locations do |t|
      t.text :event_location
      t.text :display_name

      t.timestamps
    end
  end
end
