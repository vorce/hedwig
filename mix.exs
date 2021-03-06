defmodule Hedwig.Mixfile do
  use Mix.Project

  def project do
    [
      app: :hedwig,
      version: "0.0.2",
      elixir: "~> 1.0",
      deps: deps
    ]
  end

  def application do
    [
      applications: [:crypto, :ssl, :exml, :logger],
      mod: {Hedwig, []}
    ]
  end

  defp deps do
    [
      {:exml, github: "paulgray/exml"}
    ]
  end
end
