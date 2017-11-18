#maps using pattern matching
person = %{ "name" => "Bryan",
            "age" => 28,
            "address" => %{ "city" => "Orlando", "state" => "FL" }
          }
%{ "name" => name, "age"  => age } = person
IO.puts "#{name} #{age}"

%{ "address" => %{ "state" => state }} = person
IO.puts "State: #{state}"
