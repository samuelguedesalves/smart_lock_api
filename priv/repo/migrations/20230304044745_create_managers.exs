defmodule SmartLock.Repo.Migrations.CreateManagers do
  use Ecto.Migration

  def change do
    create table(:managers, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :password_hash, :string
      add :email, :string

      timestamps()
    end
  end
end
