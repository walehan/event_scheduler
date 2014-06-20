class Person < ActiveRecord::Base
  has_many :created_requests, :class_name => 'Request', :foreign_key => :creator_person_id
  has_many :responses
  has_many :person_requests

  def create_request(event_name, request_type_id, event_type_id)
    my_request = Request.new :event_name => event_name, :request_type_id => request_type_id, :event_type_id => event_type_id
    my_request.add_person(self, CommunicationMethod.where(:communication_method => 'default')) 
    my_request.creator_person = self
    my_request.save
    return my_request
  end


end
