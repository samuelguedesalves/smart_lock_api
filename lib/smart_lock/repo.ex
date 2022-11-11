defmodule SmartLock.Repo do
  use Ecto.Repo,
    otp_app: :smart_lock,
    adapter: Ecto.Adapters.Postgres
end
