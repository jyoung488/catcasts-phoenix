defmodule CatcastsWeb.LayoutViewTest do
  use CatcastsWeb.ConnCase, async: true

  test "Verify navbar is displayed", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "<div class=\"top-bar\" id=\"my-menu\">"
  end
end
