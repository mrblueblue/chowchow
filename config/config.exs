use Mix.Config

import_config "#{System.get_env("ENV") || "local"}.exs"
