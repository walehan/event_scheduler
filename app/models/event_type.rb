class EventType < ActiveRecord::Base
  has_many :event_polls
  has_many :event_subtypes
end
