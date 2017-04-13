defmodule HoundTemplate do
  use ExUnit.CaseTemplate
  use Hound.Helpers

  @opts Application.get_env(:chowchow, :capabilities)

  setup do
    Hound.start_session @opts
    :ok
  end
end
