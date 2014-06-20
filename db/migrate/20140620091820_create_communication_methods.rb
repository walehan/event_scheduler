class CreateCommunicationMethods < ActiveRecord::Migration
  def change
    create_table :communication_methods do |t|
      t.string :communication_method

      t.timestamps
    end
  end
end
