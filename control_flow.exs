 defmodule Account do
   def list_transactions(filename) do
     case File.read(filename) do
       { :ok, content } when byte_size(content) > 100 -> "Contentx: #{content}"
       { :ok, content } -> "Content: #{content}"
       { :error, type } -> "Error: #{type}"
     end
   end

   def transfer_amount(from, to, amount) do
     if amount < 5000 do
       do_transfer(from, to, amount)
       { :ok, amount }
     else
       { :error, "Invalid Transfer" }
     end
   end

   defp do_transfer(_from, _to, _amount) do
     IO.puts "Transfer done!"
   end
 end

Account.list_transactions("transactions.csv")
|> IO.puts

from = 123123
to = 123124
amount = 100.00

case Account.transfer_amount(from, to, amount) do
  { :ok, value } when value > 1000 -> IO.puts "Amount transferred."
  {:ok, value} -> IO.puts "Transferred: $#{value}"
  {:error, message} -> IO.puts "Error: #{message}"
end
