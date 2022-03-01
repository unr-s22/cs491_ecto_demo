defmodule AccountManager.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :last_name, :string
      add :first_name, :string

      timestamps()
    end
  end
end
