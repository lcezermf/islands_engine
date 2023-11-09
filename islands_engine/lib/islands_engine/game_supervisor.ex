defmodule IslandsEngine.GameSupervisor do
  use DynamicSupervisor

  alias IslandsEngine.Game

  def start_link(_options) do
    DynamicSupervisor.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def start_game(player_1_name) when is_binary(player_1_name) do
    DynamicSupervisor.start_child(__MODULE__, Game.child_spec(player_1_name))
  end

  def stop_game(player_1_name) when is_binary(player_1_name) do
    :ets.delete(:game_state, player_1_name)
    DynamicSupervisor.terminate_child(__MODULE__, pid_from_name(player_1_name))
  end

  def init(:ok) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end

  defp pid_from_name(player_1_name) when is_binary(player_1_name) do
    player_1_name
    |> Game.create_via_tuple()
    |> GenServer.whereis()
  end
end
