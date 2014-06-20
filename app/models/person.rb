class Person < ActiveRecord::Base
  has_many :created_requests, :class_name => 'Request', :foreign_key => :creator_person_id
  has_many :responses
end
