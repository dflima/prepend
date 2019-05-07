defmodule Prepend do
  @moduledoc """
  Documentation for Prepend.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Prepend.hello
      :world

  """
  def hello do
    :world
  end

  @doc """
  Prepend the given string to each line of a stream
  and returns a stream of the resulting lines.

  ## Example:

  iex> ["one", "two"] |> Prepend.stream_lines("$ ") |> Enum.to_list
  ["$ one", "$ two"]

  """
  @spec stream_lines(Enumerable.t(), String.t()) :: Enumerable.t()
  def stream_lines(in_stream, string) do
    in_stream |> Stream.map(&(string <> &1)) end
end
