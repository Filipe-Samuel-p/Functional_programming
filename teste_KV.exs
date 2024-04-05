defmodule KV do
  use Agent
  Agent.start_link(fn->state end)
  def put(pid,key,value) do
    Agente.update(pid,fn kv -> map.put(KV,key,value) end)
  end

  def update(pid,key,value) do
    Agent.update(pid)
  end
end
