class CreateResponseTimeslots < ActiveRecord::Migration
  def change
    create_table :response_timeslots do |t|
      t.integer :response_id
      t.timestamp :start_time
      t.timestamp :end_time
      t.integer :location_flexibility_rating

      t.timestamps
    end
  end
end
