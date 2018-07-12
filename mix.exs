defmodule ExCsv2json.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_csv2json,
      version: "0.1.0",
      elixir: "~> 1.2",
      description: "Module and mix task to convert csv to json",
      source_url: "https://github.com/techgaun/ex_csv2json",
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:csv, "~> 1.4.2"}
    ]
  end

  defp package do
    [
      maintainers: [
        "Samar Acharya"
      ],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/techgaun/ex_csv2json"}
    ]
  end
end
