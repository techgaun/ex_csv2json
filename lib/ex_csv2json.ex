defmodule ExCsv2Json do
  @moduledoc """
  Simple module to convert CSV to JSON

  ## Example
      ExCsv2Json.convert(inp.csv, out.json)
  """

  @doc """
  Convert given input to json
  """
  def convert(input, output) do
    json = input
      |> File.stream!
      |> CSV.decode(headers: true)
      |> Poison.encode!

    File.write!(output, json, [:write, :utf8])
  end
end
