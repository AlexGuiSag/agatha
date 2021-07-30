defmodule AgathaWeb.PageController do
  use AgathaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
