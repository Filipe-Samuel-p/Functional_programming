ExUnit.start()

defmodule EnumMap do
  @doc """
  Duplica todos os valores de uma lista de números inteiros utilizando `Enum.map`.

  ## Dicas
  - Use `Enum.map/2` para iterar sobre a lista e duplicar cada elemento.

  ## Exemplos

      iex> EnumMap.run([1, 2, 3])
      [2, 4, 6]
  """
  @spec run(list(integer)) :: list(integer)
  def run(nums) do
    Enum.map(nums, fn x -> x *2 end)  #Enum.map, recebe dois parametros e retorna uma lista cujo os elementos sao interacoes
                                      # determinadas pela funcao anonima fn. Os elementos da nova lista sao determinados pela funcao anonima
  end
end

defmodule EnumMapTest do
  use ExUnit.Case, async: true

  test "duplica os valores de uma lista de inteiros" do
    assert EnumMap.run([1, 2, 3]) == [2, 4, 6]
  end
end
