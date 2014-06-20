class RequestPerson < ActiveRecord::Base
  belongs_to :person
  belongs_to :communication_method
  belongs_to :response

  belongs_to :request
end
