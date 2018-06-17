defmodule Authentication.Interface do
  
  def valid?(token, _) when token != "asdf", do: {:stop, :unauthorized}
  def valid?(_,_), do: {:stop}

end