defmodule Discuss.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Discuss.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        content: "some content",
        title: "some title"
      })
      |> Discuss.Blog.create_post()

    post
  end
end
