class String


score = { "a" => 1, "x" => 8, "e" => 1, "l" => 10, }


  define_method(:scrabble) do
    total = 0

  self.split("").each() do |i|

  total = total.+(score.fetch(i))

    end
    total
  end




end
