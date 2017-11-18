defmodule Person do
  def format_name(full_name) do
    format(String.split(full_name))
  end

  def format(parts) do
    first = Enum.at(parts, 0)
    last = Enum.at(parts, 1)
    "#{String.upcase(last)}, #{first}"
  end
end

IO.puts Person.format_name("Bryan Bolivar")
