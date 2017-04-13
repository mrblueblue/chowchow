defmodule ChowchowTest do
  use ExUnit.Case
  use Hound.Helpers

  doctest Chowchow

  IO.inspect Application.get_env(:chowchow, :capabilities)
  hound_session(driver: Application.get_env(:chowchow, :capabilities))

  test "the truth" do
    navigate_to("http://www.reddit.com")
    IO.inspect current_url()
    assert 1 + 1 == 2
  end
end
