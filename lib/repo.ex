defmodule MyApp.Repo do
  use Ecto.Repo,
    otp_app: :oban_timeout_issue,
    adapter: Ecto.Adapters.Postgres
end
