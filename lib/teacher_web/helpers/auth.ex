defmodule TeacherWeb.Helpers.Auth do

  def signed_in?(%Plug.Conn{params: %{"auth" => "true"}}) do
    true
  end

  def signed_in?(_conn) do
    false
  end

end
