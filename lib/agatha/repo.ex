defmodule Agatha.Repo do
  use Ecto.Repo,
    otp_app: :agatha,
    adapter: Ecto.Adapters.Postgres
end
