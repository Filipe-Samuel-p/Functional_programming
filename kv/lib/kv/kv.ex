defmodule KV do
    use Agent

    def start_link(state\\%{}) do
      Agent.start_link(fn -> state end)
    end

    def put(pid,key,value) do
      Agent.update(pid,fn kv ->   Map.put(kv,key,value) end)
    end

    def update(pid,key,value) do
      Agent.update(pid,fn kv ->
        Map.update!(kv,key, fn -> value end) end)
    end

    def get(pid,key) do
      Agent.get(pid,fn kv -> kv[key] end )
    end

    def delete(pid,key) do
      Agent.update(pid,&Map.pop(&1,key))
    end
end
