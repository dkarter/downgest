# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :downgest,
  ecto_repos: [Downgest.Repo]

# Configures the endpoint
config :downgest, Downgest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "I2vbSQoICYYaK1xhuYB4TbXbhrl0RXv0/pABfQv3DmeP2pJE80iGYsLQ9OnQ6b4U",
  render_errors: [view: Downgest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Downgest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :elmer, elmpath: 'web/elm'

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
