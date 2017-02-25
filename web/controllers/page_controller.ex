defmodule Downgest.PageController do
  use Downgest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
