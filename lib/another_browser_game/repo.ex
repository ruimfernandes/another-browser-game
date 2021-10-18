defmodule AnotherBrowserGame.Repo do
  use Ecto.Repo,
    otp_app: :another_browser_game,
    adapter: Ecto.Adapters.Postgres
end
