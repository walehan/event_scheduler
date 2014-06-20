class EventType < ActiveRecord::Base
  has_many :requests
  has_many :event_subtypes
end
