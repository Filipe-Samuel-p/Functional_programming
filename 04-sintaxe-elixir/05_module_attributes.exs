ExUnit.start()

defmodule UsoModuleAttributes do
  @doc """
  Demonstra o uso de module attributes como constantes.

  ## Dicas
  - Defina um ou mais module attributes para serem usados como constantes dentro do módulo.

  ## Exemplos

      iex> UsoModuleAttributes.run()
      "O valor da constante é: 42"
  """
  @constante 42
  @spec run() :: String.t()
  def run() do
   IO.inspect("O valor da constante é: #{@constante}") #lembra o f-strings em python
  end
end

defmodule UsoModuleAttributesTest do
  use ExUnit.Case, async: true

  test "retorna a string com o valor da constante" do
    assert UsoModuleAttributes.run() == "O valor da constante é: 42"
  end
end
