# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :teacher,
  ecto_repos: [Teacher.Repo]

# Configures the endpoint
config :teacher, TeacherWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z8zQsbGh0fBADrZTqLWeymiM8GN5KeDV6KDrmBrCdqvrNvov8uTXSjBYn5lT+yL/",
  render_errors: [view: TeacherWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Teacher.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Thesis Main Config
config :thesis,
  store: Thesis.EctoStore,
  authorization: Teacher.ThesisAuth,
  uploader: Thesis.RepoUploader

config :thesis, :dynamic_pages,
  view: TeacherWeb.PageView,
  templates: ["blog.html"],
  not_found_view: TeacherWeb.ErrorView,
  not_found_template: "404.html"

# Thesis Store Config
config :thesis, Thesis.EctoStore, repo: Teacher.Repo

# Thesis Notifications Config
# config :thesis, :notifications,
#   add_page: [],
#   page_settings: [],
#   import_export_restore: []

# Thesis Dynamic Pages Config
# config :thesis, :dynamic_pages,
#   view: TeacherWeb.PageView,
#   templates: ["index.html", "otherview.html"],
#   not_found_view: TeacherWeb.ErrorView,
#   not_found_template: "404.html"
