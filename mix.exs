defmodule PlugUtm.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_utm,
     description: "UTM tracking parameters to cookies",
     package: package,
     version: "0.0.2",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:cowboy, :plug, :logger]]
  end

  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:plug, "~> 1.0"}
    ]
  end

  defp package do
    [
      maintainers: ["Hugo Duksis"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/honeypotio/plug_utm"},
      files: ~w(lib LICENSE mix.exs README.md)
    ]
  end
end
