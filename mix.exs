# Generated by usvc-1.14.4
# Feel free to adjust, it will not be overridden

defmodule GrpcMock.Mixfile do
  use Mix.Project

  @version "0.3.1"

  def project do
    [
      app: :grpc_mock,
      version: @version,
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      description: description(),
      package: package(),
      docs: docs(),
      deps: deps()
    ]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger], mod: {GrpcMock.Application, []}]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp description do
    """
    GrpcMock is mocking library for [Elixir gRPC implementation](https://github.com/tony612/grpc-elixir).
    It provides seamless mock creation based on `pb.ex` definition and
    usual mocking "expect" - "verify" mechanisms.
    """
  end

  defp package do
    [
      maintainers: ["Predrag Rakic"],
      licenses: ["Apache License, Version 2.0"],
      links: %{"GitHub" => "https://github.com/renderedtext/grpc-mock"}
    ]
  end

  defp docs do
    [
      main: "GrpcMock",
      source_ref: "v#{@version}",
      source_url: "https://github.com/renderedtext/grpc-mock"
    ]
  end

  defp deps do
    [
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:grpc, github: "elixir-grpc/grpc", sha: "eff8a8828d27ddd7f63a3c1dd5aae86246df215e"},
      {:cowlib, "~> 2.11.0", override: true},
      {:ex_doc, "~> 0.18.0", only: :dev}
    ]
  end
end
