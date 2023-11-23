defmodule IslandsInterfaceWeb.AccountJSON do
  def index(assigns) do
    # Here I could do a more defined handle to the data being returned on the JSON
    assigns[:accounts]
  end
end
