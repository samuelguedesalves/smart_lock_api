defmodule SmartLock.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `SmartLock.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        cpf: "some cpf",
        name: "some name",
        password: "some password"
      })
      |> SmartLock.Users.create_user()

    user
  end
end
