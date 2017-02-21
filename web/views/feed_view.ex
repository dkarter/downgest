defmodule Downgest.FeedView do
  use Downgest.Web, :view

  def render("index.json", %{feeds: feeds}) do
    %{
      feeds: feeds
    }
  end

  def render("create.json", %{id: id}) do
    %{
      status: "success",
      id: id,
    }
  end
end
