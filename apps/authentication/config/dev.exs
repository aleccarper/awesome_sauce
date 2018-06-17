use Mix.Config

config :authentication, Authentication.Repo,[
  adapter: Ecto.Adapters.Postgres,
  database: "authentication_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
]
