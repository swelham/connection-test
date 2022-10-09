defmodule DbConnApp.Repo do
  use Ecto.Repo,
    otp_app: :db_conn_app,
    adapter: Ecto.Adapters.Postgres
end
