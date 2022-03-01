defmodule AccountManagerWeb.PageController do
  use AccountManagerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
