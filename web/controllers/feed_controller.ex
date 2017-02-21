defmodule Downgest.FeedController do
  use Downgest.Web, :controller
  alias Downgest.Repo
  alias Downgest.Feed

  def index(conn, _params) do
    feeds = Repo.all(Feed)
    render conn, "index.json", feeds: feeds
  end

  def create(conn, %{ "feed" => feed_params }) do
    changeset = Feed.changeset(%Feed{}, feed_params)

    case Repo.insert(changeset) do
      {:ok, feed} ->
        conn
        |> put_status(:created)
        |> render("create.json", %{ id: feed.id })
      {:error, _} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Downgest.ChangesetView, "error.json")
    end
  end
end
