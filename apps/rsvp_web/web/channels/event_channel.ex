defmodule RsvpWeb.EventChannel do
    use Phoenix.Channel

    def join("event:" <> event_id, _message, socket) when event_id <= 0 do
        {:error, %{ reason: "Invalid event id." }}
    end

    def join("event:" <> event_id, _message, socket) do
        {:ok, socket}
    end

    def send_update(event) do
        event_room = "event:#{event.id}"
        payload = %{ "quantity" => event.quantity_available }
        RsvpWeb.Endpoint.broadcast(event_room, "update_quantity", payload)
    end
end