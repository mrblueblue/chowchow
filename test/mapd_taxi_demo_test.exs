defmodule MapDTaxiDemoTest do
  use ExUnit.Case, async: true
  use Hound.Helpers
  doctest Chowchow

  hound_session(driver: Application.get_env(:chowchow, :capabilities))

  @url "https://www.mapd.com/demos/taxis/"

  test "the truth" do
    navigate_to(@url)
    assert element_displayed?({:css, ".mapboxgl-map"})
    assert 1 + 1 == 2
  end
end
