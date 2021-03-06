defmodule Budget do
  @moduledoc """
  Documentation for Budget.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Budget.hello
      :world

  """
  def hello do
    :world
  end

  def current_balance(initial, spending) do
    initial - spending
  end
end

#in terminal: 
# mix run -e "Budget.current_balance(100, 50) |> IO.puts"
