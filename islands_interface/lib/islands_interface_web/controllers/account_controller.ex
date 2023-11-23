defmodule IslandsInterfaceWeb.AccountController do
  use IslandsInterfaceWeb, :controller

  def index(conn, _params) do
    accounts = IslandsInterface.Accounts.list()

    render(conn, :index, accounts: accounts)
  end
end
