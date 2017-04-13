defmodule MapDTaxiDemoTest do
  use HoundTemplate, async: true
  use Hound.Helpers

  @url "https://www.mapd.com/demos/taxis/"

  test "the truth" do
    navigate_to(@url)
    element_displayed?({:css, ".app-overlay"})
    assert(element_displayed?({:css, ".mapboxgl-map"}), "displays pointmap")
    row_chart_valid?()
  end

  defp row_chart_valid? do
    assert(element_displayed?({:css, ".chart-type-row g.row"}), "displays pointmap")
    find_all_elements(:css, ".chart-type-row g.row")
      |> Stream.with_index
      |> Enum.each(&row_class_valid?/1)
  end

  defp row_class_valid? element_with_index do
    {element, index} = element_with_index
    assert(attribute_value(element, "class") == "row _#{index}")
  end
end
