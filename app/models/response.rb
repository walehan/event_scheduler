class Response < ActiveRecord::Base
  belongs_to :person
  belongs_to :request

  has_many :response_timeslots
end
