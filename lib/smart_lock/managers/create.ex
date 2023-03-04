defmodule SmartLock.Managers.Create do
  alias SmartLock.Managers.Manager
  alias SmartLock.Repo
  alias SmartLock.AuthGuardian

  def call(attrs) do
    attrs
    |> Manager.changeset()
    |> Repo.insert()
    |> AuthGuardian.encode_and_sign()
  end
end
