defmodule SmartLock.ManagersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `SmartLock.Managers` context.
  """

  @doc """
  Generate a manager.
  """
  def manager_fixture(attrs \\ %{}) do
    {:ok, manager} =
      attrs
      |> Enum.into(%{
        email: "some email",
        name: "some name",
        password_hash: "some password_hash"
      })
      |> SmartLock.Managers.create_manager()

    manager
  end
end
