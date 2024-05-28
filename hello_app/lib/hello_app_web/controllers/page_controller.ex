defmodule HelloAppWeb.PageController do
  use HelloAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def goodbye(conn, _params) do
    html(conn, "¡Chao!")
  end
  def hello(conn, _params) do
    html(conn, "¡Hola!")
  end
end
