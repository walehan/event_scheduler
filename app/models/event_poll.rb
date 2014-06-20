class EventPoll < ActiveRecord::Base
  belongs_to :creator_person, :class_name => 'Person', :foreign_key => :creator_person_id

  has_many :requests
  has_many :responses, :through => :requests

  # lookup tables 
  belongs_to :event_type
  belongs_to :event_poll_type  

  # TODO - add logic to make sure owner has answered already, if person != creator_person
  def add_person_request(person, communication_method_id)
    pr = Request.new :communication_method_id => communication_method_id
    pr.person = person
    self.requests << (pr)
    self.save
  end

end
