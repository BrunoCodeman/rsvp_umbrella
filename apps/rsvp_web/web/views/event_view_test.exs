defmodule RsvpWeb.EventViewTest do
    use RsvpWeb.ConnCase, async: true

    @tag only: true
    test "Should convert a date to M/D/YY format" do
        date = %NaiveDateTime{year: 2016, month: 12, day: 03, hour: 00, minute: 00, second: 00}    
        Phoenix.View.render(Rsvp.EventView, "details.html", event: %{title:  "my event", date: date})
        
        formatted = RsvpWeb.EventView.format_date(date)
        assert formatted == "12/3/2016"
    end
end