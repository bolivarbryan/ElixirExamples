defmodule Account do
  def run_transaction(balance, amount, transaction) do
    if balance <= 0 do
      "Cannot perform any transaction"
    else
      transaction.(balance, amount)
    end
  end
end

deposit = fn(balance, amount) -> balance + amount end
withdrawal = fn(balance, amount) -> balance - amount end

Account.run_transaction(1000, 20, withdrawal)
|> IO.puts

Account.run_transaction(1000, 20, deposit)
|> IO.puts

Account.run_transaction(0, 20, deposit)
|> IO.puts


# pattern matching in anonymous functions

account_transaction = fn
  (balance, amount, :deposit) -> balance + amount
  (balance, amount, :withdrawal) -> balance - amount
end


account_transaction.(100, 40, :deposit)
|> IO.puts

#shorthand

deposit = &(&1 + &2)

Account.run_transaction(200, 40, deposit)
|> IO.puts

#inline shorthand
Account.run_transaction(1000, 20, &(&1 + &2))
|> IO.puts

Enum.map([1,2,3,4,5], &(&1 * 2))
|> IO.puts
