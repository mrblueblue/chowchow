Application.ensure_all_started(:hound)
Code.require_file("test/test_template.exs") 
ExUnit.start()
