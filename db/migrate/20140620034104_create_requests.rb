class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :creator_person_id
      t.integer :owner_person_id
      t.integer :request_type_id
      t.integer :event_type_id
      t.string :event_name
      t.integer :creator_response_id

      t.timestamps
    end
  end
end
