class CreateRequest < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :person_id
      t.integer :event_poll_id
      t.integer :communication_method_id
      t.integer :response_id

      t.timestamps
    end
  end
end
