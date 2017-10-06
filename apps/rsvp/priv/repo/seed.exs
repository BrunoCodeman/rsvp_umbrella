
unless(Rsvp.EventQueries.any) do
    Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2017-11-12 00:00:00", title: "Event 1", location: "Somewhere"}))
    
    Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2018-09-22 05:00:00", title: "Event 2", location: "Nowhere"}))
    
end
