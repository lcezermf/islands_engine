defmodule IslandsInterface.Accounts.Account do
  # @derive {Jason.Encoder, o#nly: [:name]}
  @derive Jason.Encoder
  defstruct [:name, :age]
end
