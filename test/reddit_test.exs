defmodule RedditTest do
  use ExUnit.Case, async: true
  use Hound.Helpers
  doctest Chowchow

  hound_session(driver: Application.get_env(:chowchow, :capabilities))

  @url "https://news.ycombinator.com/"

  test "the truth" do
    navigate_to(@url)
    :timer.sleep(15000)
    assert current_url() == @url
  end
end
