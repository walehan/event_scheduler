class Request < ActiveRecord::Base
  belongs_to :creator_person, :class_name => 'Person', :foreign_key => :creator_person_id
  has_many :responses

  # lookup tables 
  belongs_to :event_type
  belongs_to :request_type  
end
