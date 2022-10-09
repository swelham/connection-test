defmodule DbConnAppWeb.PageController do
  use DbConnAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
