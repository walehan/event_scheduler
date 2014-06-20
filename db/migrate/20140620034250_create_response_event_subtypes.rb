class CreateResponseEventSubtypes < ActiveRecord::Migration
  def change
    create_table :response_event_subtypes do |t|
      t.integer :response_id
      t.integer :event_subtype_id

      t.timestamps
    end
  end
end
