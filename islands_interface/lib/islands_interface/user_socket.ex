defmodule IslandsInterface.UserSocket do
  use Phoenix.Socket

  channel "game:*", IslandsInterfaceWeb.GameChannel

  def id(_socket), do: nil

  def connect(_params, socket) do
    {:ok, socket}
  end
end
