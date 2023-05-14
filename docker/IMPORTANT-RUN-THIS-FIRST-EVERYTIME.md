# YOU MUST DEFINE ENV VARIABLE: PROJECT_NAME

The decoupled service (db and middleware) is expecting a shared network defined in

1. Shell environment variable (used by init-supabase-decoupled.sh initialization script)
2. .env file (used by docker compose configuration yaml file)

```sh
export PROJECT_NAME=a_project_name_as_defined_in_dotenv_file
```
