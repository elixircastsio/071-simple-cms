defmodule Teacher.ThesisAuth do
  @moduledoc """
  Contains functions for handling Thesis authorization.
  """

  @behaviour Thesis.Auth

  def page_is_editable?(conn) do
    TeacherWeb.Helpers.Auth.signed_in?(conn)
  end
end
