defmodule Api.AuthenticationInterface do
  
  def remote_call(module, fun, args, env \\ Mix.env) do
    do_remote_call({module, fun, args}, env)
  end

  def remote_node do
    Node.list |>
    Enum.filter(fn(n) -> Atom.to_string(n) |> String.match?(~r/authentication/) end) |>
    Enum.random
  end

  defp do_remote_call({module, fun, args}, :test) do
    apply(module, fun, args)
  end
  
  defp do_remote_call({module, fun, args}, _) do
    :rpc.call(remote_node(), module, fun, args)
  end
  
end