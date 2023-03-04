defmodule SmartLock.Managers.Get do
  alias SmartLock.Managers.Manager
  alias SmartLock.Repo

  def by_id(id) do
    Repo.get(Manager, id)
  end
end
