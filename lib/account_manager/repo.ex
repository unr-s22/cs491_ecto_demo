defmodule AccountManager.Repo do
  use Ecto.Repo,
    otp_app: :account_manager,
    adapter: Ecto.Adapters.Postgres
end
