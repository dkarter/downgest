defmodule Downgest.Feed do
  use Downgest.Web, :model

  @derive {Poison.Encoder, only: [:name, :url]}

  schema "feeds" do
    field :name
    field :url

    timestamps()
  end

  @required_fields ~w(name url)

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields)
  end
end
