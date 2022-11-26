defmodule SmartLock.Users.GetUser do
  alias SmartLock.Users.User
  alias SmartLock.Repo

  import Ecto.Query, only: [from: 2]

  def get_by_rfid(rfid) do
    query = from u in User, where: u.rfid == ^rfid

    Repo.one(query)
  end
end
