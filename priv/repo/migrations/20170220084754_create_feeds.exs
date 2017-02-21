defmodule Downgest.Repo.Migrations.CreateFeeds do
  use Ecto.Migration

  def change do
    create table(:feeds) do
      add :name, :varchar, null: false
      add :url, :varchar, null: false

      timestamps()
    end
  end
end
