class Request < ActiveRecord::Base
  belongs_to :person
  belongs_to :communication_method
  belongs_to :event_poll

  has_one :response

  # respond with global vars to a request with all information. Agg information is in array
  def respond(min_people, max_people, min_duration, max_duration, subtype_flex_rating, subtype_id_array)
    if self.response == nil
        r = Response.new
        self.response = r
    else
        r = self.response
        # TODO - fix logic here to not delete but make older ones invalid in the future
        # if subtypes exist, then delete them
        r.response_event_subtypes.destroy_all
    end     
    r.min_people = min_people
    r.max_people = max_people
    r.min_duration = min_duration
    r.max_duration = max_duration
    r.event_subtype_flexibility_rating = subtype_flex_rating

    subtype_id_array.each do | subtype |
        r.response_event_subtypes << ( ResponseEventSubtype.new( :event_subtype_id => subtype ) )
    end

    r.save
    self.save

    return r
  end

end
