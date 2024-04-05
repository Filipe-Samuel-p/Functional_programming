defmodule KV.registry do
  use GenServer

  def start_link do
    GenServer.start_link(KV.registy,:ok,opts)
  end

  def lookup(server,)
end
