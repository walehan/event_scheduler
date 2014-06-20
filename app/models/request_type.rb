class RequestType < ActiveRecord::Base
  has_many :event_polls
end
