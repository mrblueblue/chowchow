defmodule StackoverflowTest do
  use HoundTemplate, async: true
  use Hound.Helpers

  @url "https://stackoverflow.com/"

  test "the truth" do
    navigate_to(@url)
    assert current_url() == @url
  end
end
