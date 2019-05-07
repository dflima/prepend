defmodule Mix.Tasks.Prepend do
  @moduledoc false

  use Mix.Task
  alias Prepend.CLI

  @shortdoc "Prepend stdin with args"
  def run(argv), do: CLI.main(argv)
end
