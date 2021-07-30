# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :agatha,
  ecto_repos: [Agatha.Repo]

# Configures the endpoint
config :agatha, AgathaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "m5/skL5LAanIp2T8O+rlh8btN5FdExr66tKSyoqV1NK+i+Dhy5HQr1GPgWI8h67A",
  render_errors: [view: AgathaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Agatha.PubSub,
  live_view: [signing_salt: "JtQwsluW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
