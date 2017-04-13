defmodule MapDTaxiDemoTest do
  use HoundTemplate, async: true
  use Hound.Helpers

  @url "https://www.mapd.com/demos/taxis/"

  test "the truth" do
    navigate_to(@url)
    assert 1 + 1 == 2
    assert element_displayed?({:css, ".mapboxgl-map"})
  end

end
