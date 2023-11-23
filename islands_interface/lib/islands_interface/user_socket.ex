defmodule IslandsInterface.UserSocket do
  use Phoenix.Socket

  channel "game:*", IslandsInterfaceWeb.GameChannel

  def connect(_params, socket) do
    {:ok, socket}
  end
end
