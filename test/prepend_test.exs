defmodule PrependTest do
  use ExUnit.Case
  doctest Prepend

  test "greets the world" do
    assert Prepend.hello() == :world
  end
end
