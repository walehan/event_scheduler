# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


RequestType.create([ { request_type: 'democracy', display_name: 'Democracy' },
                     { request_type: 'republic', display_name: 'Republic' },
                     { request_type: 'tyranny', display_name: 'My Way or the Highway' }])

sport_event = EventType.create( event_type: 'sports', display_name: 'Play Sports' )

EventSubtype.create([ { event_type_id: sport_event.id, event_subtype: 'basketball', display_name: 'Basketball' },
                      { event_type_id: sport_event.id, event_subtype: 'volleyball', display_name: 'Volleyball' } ])

EventLocation.create([ { event_location: 'Orleans and Division Basketball Park', display_name: 'Orleans and Division Basketball Park' } ])
            

CommunicationMethod.create([ {communication_method: 'email'},
                             {communication_method: 'phone_text'},
                             {communication_method: 'push'},
                             {communication_method: 'default'} ])
