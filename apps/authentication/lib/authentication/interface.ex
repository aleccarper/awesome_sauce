defmodule Authentication.Interface do
  
  def valid?(token, route) when token == "asdf" and route == "sauce", do: {:ok}
  def valid?(_,_), do: {:stop}
  
end