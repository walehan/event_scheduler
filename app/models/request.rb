class Request < ActiveRecord::Base
  belongs_to :creator_person, :class_name => 'Person', :foreign_key => :creator_person_id
  belongs_to :creator_response, :class_name => 'Response', :foreign_key => :creator_response_id

  has_many :request_people
  has_many :responses, :through => :request_people

  # lookup tables 
  belongs_to :event_type
  belongs_to :request_type  


  def add_person(person, communication_method_id)
    self.request_people << (RequestPerson.new :person_id => person.id, :communication_method_id => communication_method_id)
    self.save
  end
end
