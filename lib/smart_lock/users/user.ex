defmodule SmartLock.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:name, :rfid]

  @derive {Jason.Encoder, only: [:id, :name, :rfid]}

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :rfid, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, @fields)
    |> validate_required(@fields)
  end
end
