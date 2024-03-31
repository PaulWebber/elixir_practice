defmodule Greeter do
  @author "Paul"
  def start do
    name = IO.gets("What is your name?\n")

    case String.trim(name) do
      @author -> "Wow! #{@author} is my name too"
      name -> "Hello #{name}"
    end
  end
end
