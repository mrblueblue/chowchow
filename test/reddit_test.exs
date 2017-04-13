defmodule RedditTest do
  use HoundTemplate, async: true
  use Hound.Helpers

  @url "https://news.ycombinator.com/"

  test "the truth" do
    navigate_to(@url)
    assert current_url() == @url
  end
end
