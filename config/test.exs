import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :another_browser_game, AnotherBrowserGame.Repo,
  username: "postgres",
  password: "postgres",
  database: "another_browser_game_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :another_browser_game, AnotherBrowserGameWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "+yq3gfr3WralTHcbqnPMY9A6fRk3BS45xgx8qhEM94WQjt5E5cZm6rNXLOCVdLUd",
  server: false

# In test we don't send emails.
config :another_browser_game, AnotherBrowserGame.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
