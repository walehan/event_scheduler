class Response < ActiveRecord::Base
  belongs_to :person
  belongs_to :request

  has_many :response_timeslots
  has_many :response_event_subtypes

  # respond with global vars to a request with all information. Agg information is in array
  def respond(min_people, max_people, min_duration, max_duration, subtype_flex_rating, subtype_id_array)
    self.min_people = min_people
    self.max_people = max_people
    self.min_duration = min_duration
    self.max_duration = max_duration
    self.event_subtype_flexibility_rating = subtype_flex_rating

    # if already exist, then remove older ones
    # TODO - history the older ones, don't destroy them
    self.response_event_subtypes.destroy_all
    subtype_id_array.each do | subtype |
      self.response_event_subtypes << ( ResponseEventSubtype.new( :event_subtype_id => subtype ) )
    end    

    self.save
  end

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
