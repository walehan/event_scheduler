class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :creator_person_id
      t.integer :request_type_id
      t.integer :event_type_id
      t.string :event_name

      t.timestamps
    end
  end
end
