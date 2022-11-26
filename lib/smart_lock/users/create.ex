defmodule SmartLock.Users.CreateUser do
  alias SmartLock.Users.User
  alias SmartLock.Repo

  def create(attrs) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end
end
