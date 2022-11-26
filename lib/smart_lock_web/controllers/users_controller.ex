defmodule SmartLockWeb.UsersController do
  use SmartLockWeb, :controller

  alias SmartLock.Users

  def index(conn, %{"rfid" => rfid}) do
    user = Users.GetUser.get_by_rfid(rfid)

    conn
    |> put_status(:ok)
    |> json(%{user: user})
  end
end
