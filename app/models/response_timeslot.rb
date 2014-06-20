class ResponseTimeslot < ActiveRecord::Base
  belongs_to :response

  has_many :response_timeslot_locations
end
