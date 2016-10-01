# ExCsv2json

> Convert CSV to JSON

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `ex_csv2json` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:ex_csv2json, "~> 0.1.0"}]
    end
    ```

  2. Use ExCsv2Json in your code by aliasing/importing `ExCsv2Json` and calling `ExCsv2Json.convert`

  3. Use `mix csv2json` to convert CSV file to JSON file.

    ```shell
    $ mix help csv2json
    The csv2json task takes given input csv file and converts it into json file

    Examples

    ┃ mix csv2json -i <csv_file> -o <json_file>

    Command Line Options

      • --infile / -i - input csv file
      • --outfile / -o - output json file
    ```
