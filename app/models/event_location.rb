class EventLocation < ActiveRecord::Base
  has_many :response_timeslot_locations
end
