class Person < ActiveRecord::Base
  has_many :owned_requests, :class_name => 'Request', :foreign_key => :owner_person_id
  has_many :created_requests, :class_name => 'Request', :foreign_key => :creator_person_id
  has_many :responses
end
