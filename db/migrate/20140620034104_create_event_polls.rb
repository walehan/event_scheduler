class CreateEventPolls < ActiveRecord::Migration
  def change
    create_table :event_polls do |t|
      t.integer :creator_person_id
      t.integer :event_poll_type_id
      t.integer :event_type_id
      t.string :event_name

      t.timestamps
    end
  end
end
