defmodule NewchainserviceclientTest do
  use ExUnit.Case
  doctest Newchainserviceclient

  test "greets the world" do
    assert Newchainserviceclient.hello() == :world
  end
end
