ExUnit.start()

defmodule TratamentoErros do
  @doc """
  Usa try/rescue para tratar erros ao tentar acessar uma chave em um mapa.

  ## Dicas
  - Use try/rescue para capturar o erro `KeyError` quando uma chave não existir no mapa.

  ## Exemplos

      iex> TratamentoErros.run(%{a: 1}, :b)
      "Chave não encontrada"
  """
  @spec run(map, atom) :: String.t()
  def run(mapa, chave) do
    try do
      Map.fetch!(mapa, chave)
    rescue
     KeyError -> "Chave não encontrada"
    end



  end
end

defmodule TratamentoErrosTest do
  use ExUnit.Case, async: true

  test "retorna mensagem de erro quando a chave não existe" do
    assert TratamentoErros.run(%{a: 1}, :b) == "Chave não encontrada"
  end
end
