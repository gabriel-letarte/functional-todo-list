defmodule FunctionalTodoList.TodoController do
  use FunctionalTodoList.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
