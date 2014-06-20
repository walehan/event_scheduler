class EventPoll < ActiveRecord::Base
  belongs_to :creator_person, :class_name => 'Person', :foreign_key => :creator_person_id

  has_many :person_requests
  has_many :responses, :through => :person_requests

  # lookup tables 
  belongs_to :event_type
  belongs_to :request_type  

  # TODO - add logic to make sure owner has answered already, if person != creator_person
  def add_person_request(person, communication_method_id)
    pr = PersonRequest.new :communication_method_id => communication_method_id
    pr.person = person
    self.person_requests << (pr)
    self.save
  end

end
