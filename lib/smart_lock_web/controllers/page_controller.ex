defmodule SmartLockWeb.PageController do
  use SmartLockWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
