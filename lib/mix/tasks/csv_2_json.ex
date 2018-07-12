defmodule Mix.Tasks.Csv2json do
  alias ExCsv2Json
  use Mix.Task

  @shortdoc "Convert given input csv to output json"

  @moduledoc """
  The csv2json task takes given input csv file and converts it into json file

  ## Examples

      mix csv2json -i <csv_file> -o <json_file>

  ## Command Line Options
    * `--infile` / `-i` - input csv file
    * `--outfile` / `-o` - output json file
  """

  @doc false
  def run(args) do
    {opts, _, _} =
      OptionParser.parse(
        args,
        switches: [infile: :string, outfile: :string],
        aliases: [i: :infile, o: :outfile]
      )

    if is_nil(opts[:outfile]) or is_nil(opts[:infile]) do
      Mix.shell().error("Input or output file not specified")
      System.halt(1)
    end

    opts[:infile]
    |> ExCsv2Json.convert(opts[:outfile])

    Mix.shell().info("Converted #{opts[:infile]} to #{opts[:outfile]}!")
  end
end
