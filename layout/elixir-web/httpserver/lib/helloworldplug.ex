defmodule Httpserver.helloworldplug do
  import Plug.Conn

  def init(options), do: options

  def call(conn, _apts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello World!\n")
  end
end
