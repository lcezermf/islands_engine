defmodule IslandsEngine.Rules do
  alias __MODULE__

  defstruct state: :initialized

  def new, do: %Rules{}

  @spec check(any, any) :: :error
  def check(%Rules{state: :initialized} = rules, :add_player) do
    {:ok, %Rules{rules | state: :players_set}}
  end

  def check(_state, _action), do: :error
end
