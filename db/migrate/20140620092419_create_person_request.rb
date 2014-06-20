class CreatePersonRequest < ActiveRecord::Migration
  def change
    create_table :person_requests do |t|
      t.integer :person_id
      t.integer :request_id
      t.integer :communication_method_id
      t.integer :response_id

      t.timestamps
    end
  end
end
