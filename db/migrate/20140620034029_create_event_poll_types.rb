class CreateEventPollTypes < ActiveRecord::Migration
  def change
    create_table :event_poll_types do |t|
      t.string :event_poll_type
      t.string :display_name

      t.timestamps
    end
  end
end
