class Response < ActiveRecord::Base
  belongs_to :person

  belongs_to :person_request
  has_one :request, :through => :person_request

  has_many :response_timeslots
  has_many :response_event_subtypes

  # TODO - check if timeslot exists validation
  def add_timeslot_location(start_time, end_time, location_flex_rating, location_id_array)
    rt = ResponseTimeslot.new :start_time => start_time, :end_time => end_time, :location_flexibility_rating => location_flex_rating
    location_id_array.each do | location_id |
      # TODO - revisit preference logic here
      rt.response_timeslot_locations << (ResponseTimeslotLocation.new :event_location_id => location_id)
    end
    self.response_timeslots << (rt)
    self.save
    
  end

end
