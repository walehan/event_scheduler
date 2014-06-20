class CreateEventSubtypes < ActiveRecord::Migration
  def change
    create_table :event_subtypes do |t|
      t.integer :event_type_id
      t.string :event_subtype
      t.string :display_name

      t.timestamps
    end
  end
end
