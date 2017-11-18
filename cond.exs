defmodule Account do
  def transfer_amount(from_account, to_account, amount) do
    hourOfDay = DateTime.utc_now.hour

    if !valid_transfer?(amount, hourOfDay) do
      { _ , message } = { :error, "Invalid Transfer" }
      message
    else
      perform_transfer(from_account, to_account, amount)
    end
  end

  def valid_transfer?(amount, hourOfDay) do
    cond do
      hourOfDay < 12 -> amount <= 5000
      hourOfDay < 18 -> amount <= 1000
      true -> amount <= 300
    end
  end

  def perform_transfer(from_account, to_account, amount) do
    "FROM:#{from_account} TO:#{to_account} AMOUNT: #{amount}"
  end
end

Account.transfer_amount(112233, 445566, 980)
|> IO.puts
