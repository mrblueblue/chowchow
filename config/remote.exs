use Mix.Config

config :hound,
  browser: "chrome",
  driver: "selenium",
  host: System.get_env("HOST"),
  port: 80,
  retry_time: 1000

config :chowchow,
  capabilities: %{
    "os": "OS X",
    "os_version": "El Capitan",
    "platform": "MAC",
    "browser": "Chrome",
    "browser_version": "52.0",
    "resolution": "1024x768",
    "browserstack.local": "true",
    "browserstack.user": System.get_env("USER"),
    "browserstack.key": System.get_env("KEY")
  }
