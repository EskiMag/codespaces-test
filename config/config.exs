# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :codespaces_test, CodespacesTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+bUclWth+Ti93U8kISL1L0uSKZE7FM2C9HPXsDbT87Dg2sFbII8XNnGCyIX6DF8O",
  render_errors: [view: CodespacesTestWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: CodespacesTest.PubSub,
  live_view: [signing_salt: "ZUOd87aM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
