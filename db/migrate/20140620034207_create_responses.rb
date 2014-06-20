class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :person_id
      t.integer :request_id
      t.integer :min_people
      t.integer :max_people
      t.integer :min_duration
      t.integer :max_duration
      t.integer :event_subtype_flexibility_rating

      t.timestamps
    end
  end
end
