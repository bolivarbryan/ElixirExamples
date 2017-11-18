defmodule Language do
  def print_list([head | tail]) do
    IO.puts head
    print_list(tail)
  end

  #recursivity
  def print_list([]) do
  end
end

Language.print_list(["Elixir", "JavaScript", "Ruby"])

# in Elixir loops do not exist
