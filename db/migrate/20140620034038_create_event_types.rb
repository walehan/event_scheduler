class CreateEventTypes < ActiveRecord::Migration
  def change
    create_table :event_types do |t|
      t.string :event_type
      t.string :display_name

      t.timestamps
    end
  end
end
