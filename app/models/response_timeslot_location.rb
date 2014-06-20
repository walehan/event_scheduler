class ResponseTimeslotLocation < ActiveRecord::Base
  belongs_to :response_timeslot
  belongs_to :event_location
end
