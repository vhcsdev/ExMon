defmodule Exmon.Game.Actions do
  alias Exmon.Game

  def fetch_move(move) do 
    Game.player
    |> Map.get(:moves)
    |> find_move(move)
  end

  defp find_move(moves, move) do
    Enum.find(moves, {:error, move}, fn {key, value} -> 
    if value == move, do: {:ok, key}
    end)
  end
end
