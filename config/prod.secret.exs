use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :functional_todo_list, FunctionalTodoList.Endpoint,
  secret_key_base: "nH2fPFSOMVkWreYCB+jLpFAEONK72eNPsuCMVQ4nCIlg0AdxRSwelH1ZPic3I3cp"

# Configure your database
config :functional_todo_list, FunctionalTodoList.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "functional_todo_list_prod",
  pool_size: 20
