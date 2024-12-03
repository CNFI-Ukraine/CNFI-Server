# Supabase Local Development

This is demonstration of running Supabase locally in tandem with our [React Supabase Todolist demo](https://github.com/powersync-ja/powersync-js/tree/main/demos/react-supabase-todolist).

## Getting Started

Follow the [instructions](https://supabase.com/docs/guides/cli/getting-started) for configuring Supabase locally.

Copy the environment variables template file

```bash
cp .env.template .env
```

Start the Supabase project

```bash
supabase start
```

Once started the console will contain details for the Supabase services. Apply the `anon key` to the `.env` file.

Note: Default Supabase projects expose the Postgres DB on a high port number. We currently only support ports in the range of `port >= 1024 && port <= 49151`. This demo configures Postgres on port `5433`.

Start the demonstration with `docker compose up`

The frontend should be available at `http://localhost:4170`

Note that there is a known issue with the client. It will present `busy with sync` until an item has been created. This is due to no data being present in the Postgres database. Create a todo list item to skip past this.


## Migration

## Data

To dump the data from the local Postgres database, run the following command:

```bash
supabase db dump --file supabase/seeds/private_ci2027_001.sql --schema private_ci2027_001 --data-only --db-url "postgresql://postgres:postgres@127.0.0.1:54322/postgres" --keep-comments
```


## Update initial schema
```bash
supabase db diff --use-migra --schema private_ci2027_001 --db-url "postgresql://postgres:postgres@127.0.0.1:54322/postgres" -f private_ci2027_001.sql
```