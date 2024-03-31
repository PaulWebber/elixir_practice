filename = IO.gets( "File to count the words from: ") |> String.trim()
words = String.split(File.read!(filename), ~r{(\\n|[^\w'])+}) |> Enum.filter(fn x -> x != "" end)
IO.inspect(words)
words |> Enum.count() |> IO.puts()



#{\w} is just on words
#[{\w}] negates the above, so split will only work on non words
#[{\w}+] the plus means if there are several symbols next to each other then count that all as one.
  # or in other words if you have \$# * then that will all get ignored instead of just the \
  # like we could do foo|bar which would ignore foo or bar, if we want to ignore all insrtances of both words we
  # could do (foo|bar)+
  # this is what we have right now {[^\w]+} but if we wanted to add i nthe or
  # {(|[^\w]+}) to add the pipe and brackets. So we are now looking for newthing or what we previously had
  # we want to ignore the new line \n but that means something in Regex so we have to escape it
  # {(\\n|[^\w])+})
  # {(\\n|[^\w'])+}) will also ignore apostrophe for the contractions
