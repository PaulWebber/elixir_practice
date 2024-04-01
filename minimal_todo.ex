defmodule MinimalTodo do
  def start do
    filename = IO.gets("Name of csv to load: ") |> String.trim
    read(filename)
    #ask for filename
    # open file
    # parse data
    # ask for command
  end

  def read(filename) do
    case File.read(filename) do
      {:ok, body}        -> body
      {:error, reason}  -> IO.puts ~s(Could not open file "#{filename}"\n)
                           IO.puts ~s("#{:file.format_error reason}"\n)
                           start()
    end
  end

  def parse(body) do
    [header | lines] = String.split(body, ~r{(\r\n|\r|\n)})
    titles = String.split(header, ",")

  end

end
