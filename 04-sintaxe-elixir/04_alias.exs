ExUnit.start()

defmodule UsoAlias do
  alias UsoAlias.HelloWorld, as: HW
  @doc """
  Demonstra o uso de `alias` para simplificar a chamada de uma função de um módulo longo.

  ## Dicas
  - Defina um módulo com um nome longo e use `alias` para encurtá-lo.

  ## Exemplos

      iex> UsoAlias.run()
      :ok
  """
  @spec run() :: atom
  def run() do
    alias UsoAlias.HW
    :ok
  end
end

defmodule UsoAliasTest do
  use ExUnit.Case, async: true

  test "demonstra o uso de alias" do
    assert UsoAlias.run() == :ok
  end
end
