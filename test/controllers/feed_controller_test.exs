defmodule Downgest.FeedControllerTest do
  use Downgest.ConnCase
  alias Downgest.Repo
  alias Downgest.Feed

  test "GET /feeds returns a list of feeds", %{conn: conn} do
    Repo.insert(%Feed{name: "test feed", url: "http://test_feed.com"})
    conn = get conn, "/api/feeds"
    assert json_response(conn, 200) == %{
      "feeds" => [
        %{"name" => "test feed", "url" => "http://test_feed.com"}
      ]
    }
  end

  test "POST /feeds with correct parameters creates a feed", %{conn: conn} do
    conn = post conn, "/api/feeds", %{
      feed: %{
        name: "test feed",
        url: "https://example.com/rss"
      }
    }

    last_feed = Feed |> Ecto.Query.last |> Repo.one

    assert json_response(conn, 201) == %{
      "status" => "success",
      "id" => last_feed.id,
    }
  end
end
