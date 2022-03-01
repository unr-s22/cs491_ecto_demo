defmodule AccountManager.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `AccountManager.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        first_name: "some first_name",
        last_name: "some last_name"
      })
      |> AccountManager.Accounts.create_user()

    user
  end
end
