class Person < ActiveRecord::Base
  has_many :created_event_polls, :class_name => 'EventPoll', :foreign_key => :creator_person_id
  has_many :responses
  has_many :person_requests

  def create_event_poll(event_name, request_type_id, event_type_id)
    my_poll = EventPoll.new :event_name => event_name, :request_type_id => request_type_id, :event_type_id => event_type_id
    my_poll.add_person_request(self, CommunicationMethod.where(:communication_method => 'default')) 
    my_poll.creator_person = self
    my_poll.save
    return my_poll
  end


end
