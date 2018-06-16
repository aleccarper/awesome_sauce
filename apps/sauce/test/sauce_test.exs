defmodule SauceTest do
  use ExUnit.Case
  doctest Sauce

  test "greets the world" do
    assert Sauce.hello() == :world
  end
end
