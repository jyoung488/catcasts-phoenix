defmodule Catcasts.AuthControllerTest do
  use CatcastsWeb.ConnCase

  test "Sign in with Google", %{conn: conn} do
    conn = get conn, "/auth/google?scope=email%20profile"
    assert redirected_to(conn, 302)
  end

end
