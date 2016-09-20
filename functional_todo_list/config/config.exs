# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :functional_todo_list,
  ecto_repos: [FunctionalTodoList.Repo]

# Configures the endpoint
config :functional_todo_list, FunctionalTodoList.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RsHEJOrBpaEZ1qr724SRbHEyGWYev0Zt9tJ1CKeXMPpe/tQGl6RvxzCzACSsBIfL",
  render_errors: [view: FunctionalTodoList.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FunctionalTodoList.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
