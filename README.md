# Chowchow

Example of how to use Elixir and Hound to run browser automation tests. These tests are in run in parallel and can be run locally or remotely connecting to Browserstack. 

## Running

### Locally

Assuming you have `selenium` server with the Chrome driver running on port `4444`:

```bash
WEBDRIVER=selenium ENV=local mix test
```

### Remotely

The script relies on the environmental varialbes `USER` and `KEY`, which represent your Browserstack username and access key.

You can set these varialbes in an `.env` file like

```bash
export USER="example"
export KEY="example"
```

and then run:

```bash
source .env
```
Once these variables are set, you can run the Browserstack remote tests with:

```bash
WEBDRIVER=selenium ENV=remote mix test
```
