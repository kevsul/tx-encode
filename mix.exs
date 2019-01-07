
defmodule Enc.Mixfile do
  use Mix.Project

  def project do
    [
      app: :tx_encode,
      version: "1.0.0",
      deps: deps()
    ]
  end

  defp deps do
    [
      {:ex_rlp, "~> 0.5.1"}
    ]
  end
end
