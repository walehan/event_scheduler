class CommunicationMethod < ActiveRecord::Base
  has_many :person_requests
end
