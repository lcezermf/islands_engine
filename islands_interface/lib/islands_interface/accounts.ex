defmodule IslandsInterface.Accounts do
  alias IslandsInterface.Accounts.Account

  def list do
    [
      %Account{name: "Cezer", age: 33},
      %Account{name: "Luiz", age: 40}
    ]
  end
end
