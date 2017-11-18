defmodule Account do
  def parse_file({:ok, content}) do
    IO.puts "Transactions: #{content}"
  end

  def parse_file({:error, _ }) do
    IO.puts "Error parsing file"
  end

  def balance(transactions, options \\ []) do
    currency = options[:currency] || "dolar"
    symbol = options[:symbol] || "$"
    balance = calculate_balance(transactions)
    "Balance in #{currency}: #{symbol}#{balance}"
  end
end

File.read("transactions.csv")
|> Account.parse_file()
