class Person < ActiveRecord::Base
  has_many :created_requests, :class_name => 'Request', :foreign_key => :creator_person_id
  has_many :responses
  has_many :request_people

  def create_request(event_name, request_type_id, event_type_id)
    my_request = Request.new :event_name => event_name, :request_type_id => request_type_id, :event_type_id => event_type_id
    my_request.creator_person = self
    my_response = Response.new 
    my_response.person = self
    my_response.request = my_request
    my_request.creator_response = my_response
    my_request.save
    my_response.save 
  end


end
