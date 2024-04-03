ExUnit.start()

defmodule SomaImpares do
  @doc """
  Soma todos os números ímpares em uma lista de inteiros utilizando recursão.

  ## Dicas
  - Você pode usar a função `rem/2` para verificar se um número é ímpar.
  - Considere o caso base de uma lista vazia.

  ## Exemplos

      iex> SomaImpares.run([1, 2, 3, 4, 5])
      9

      iex> SomaImpares.run([])
      0
  """
  @spec run(list(integer)) :: integer
  def run(nums,acc\\0) do
   cond do
     nums == [] -> acc
     true -> [h|t] = nums
             if rem(h,2) != 0 do
               acc = h + acc
               run(t,acc)
             else
              run(t,acc)
              end
   end

  end


end

defmodule SomaImparesTest do
  use ExUnit.Case, async: true

  test "soma números ímpares em uma lista" do
    assert SomaImpares.run([1, 2, 3, 4, 5]) == 9
  end

  test "retorna 0 para uma lista vazia" do
    assert SomaImpares.run([]) == 0
  end
end
