ExUnit.start()

defmodule ListaOrdenada do
  @doc """
  Verifica se uma lista de números inteiros está ordenada em ordem crescente.

  ## Dicas
  - Lembre-se de considerar o caso base onde a lista tem um ou nenhum elemento.
  - Compare o primeiro elemento com o segundo e prossiga recursivamente.

  ## Exemplos

      iex> ListaOrdenada.run([1, 2, 3, 4, 5])
      true

      iex> ListaOrdenada.run([1, 3, 2])
      false
  """
  @spec run(list(integer)) :: boolean
  def run(nums) do
    cond do
      nums == quicksort(nums) -> true
      true -> false
    end
  end
   def quicksort ([head|tail]) do # ordenacao da lista recebida, para depois comparar
     left = Enum.filter(tail, &(&1 < head))
     right = Enum.filter(tail, &(&1 >= head))
     quicksort(left) ++ [head] ++ quicksort(right)
   end
   def quicksort([]), do: []
end

defmodule ListaOrdenadaTest do
  use ExUnit.Case, async: true

  test "verifica lista ordenada corretamente" do
    assert ListaOrdenada.run([1, 2, 3, 4, 5]) == true
  end

  test "retorna false para lista não ordenada" do
    assert ListaOrdenada.run([1, 3, 2]) == false
  end
end
