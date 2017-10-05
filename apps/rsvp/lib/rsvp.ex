defmodule Rsvp do
  use Application
  @moduledoc """
  Documentation for Rsvp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Rsvp.hello
      :world

  """


  
  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Rsvp.Worker.start_link(arg)
      # {Rsvp.Worker, arg},
      worker(Rsvp.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: Rsvp.Supervisor]
    Supervisor.start_link(children, opts) 
  end
end