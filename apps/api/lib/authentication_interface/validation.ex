defmodule Api.AuthenticationInterface.Validation do
  
  alias Api.AuthenticationInterface

  def valid?(token, route) do
    AuthenticationInterface.remote_call(Authentication.Interface, :valid?, [token, route])
  end
  
end