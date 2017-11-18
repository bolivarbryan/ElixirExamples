 defmodule Account do
   def list_transactions(filename) do
     case File.read(filename) do
       { :ok, content } when byte_size(content) > 100 -> "Contentx: #{content}"
       { :ok, content } -> "Content: #{content}"
       { :error, type } -> "Error: #{type}"
     end
   end
 end

Account.list_transactions("transactions.csv")
|> IO.puts
