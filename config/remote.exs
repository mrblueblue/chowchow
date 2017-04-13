use Mix.Config

config :hound,
  browser: "chrome",
  driver: "selenium",
  host: "http://hub.browserstack.com",
  port: 80

config :chowchow,
  capabilities: %{
    "os": "OS X",
    "os_version": "El Capitan",
    "browser": "Chrome",
    "browser_version": "52.0",
    "resolution": "1024x768",
    "browserstack.user": System.get_env("USER"),
    "browserstack.key": System.get_env("KEY")
  }
