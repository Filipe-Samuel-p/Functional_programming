defmodule KV.server do
  require logger

  def accept(port \\ 4000) do
    {:ok,socket} =
      :gen_tcp.listen(port,[:binary,packet: :line,
          active: false, reuseaddr: true])

    logger.info("Aceito conexões na porta #{port}")
    loop(socket)
    end

  defp loop(socket) do
    {:ok, client} = :gen_tcp.accept(socket)
    serve(client)
    loop(socket)
  end

  defp serve(client) do
    {:ok, data} = :gen_tcp.recv(client, 0)
    :gen_tcp.send(client, data)
  end
end
