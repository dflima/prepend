defmodule Mix.Tasks.Prepend do
  @moduledoc false

  use Mix.Task

  @shortdoc "Prepend stdin with args"
  def run(argv), do: Prepend.CLI.main(argv)
end
