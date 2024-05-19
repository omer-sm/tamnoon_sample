defmodule TamnoonSampleTest do
  use ExUnit.Case
  doctest TamnoonSample

  test "greets the world" do
    assert TamnoonSample.hello() == :world
  end
end
