defmodule Account do
  def parse_file({:ok, content}) do
    IO.puts "Transactions: #{content}"
  end

  def parse_file({:error, _ }) do
    IO.puts "Error parsing file"
  end
end

File.read("transactions.csv")
|> Account.parse_file()

#printer

defmodule Printer do
  def greet(name, options \\ [] ) do
    greeting = options[:prefix] || "Hello"
    "#{greeting}, #{name}"
  end
end

Printer.greet("Carlos") |> IO.puts
Printer.greet("Sergio", prefix: "O HAI") |> IO.puts
Printer.greet("Dolores", prefix: "Olá") |> IO.puts
