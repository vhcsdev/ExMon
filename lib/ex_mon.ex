defmodule ExMon do
  alias ExMon.{Player, Game}
  alias ExMon.Game.{Actions, Status}

  @computer_name "ROBO"

  def create_player(name, move_rnd, move_avg, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do 
    @computer_name 
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)

    Status.print
  end

  def make_move(move) do 
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong(move)

  defp do_move({:ok, move}) do 
    case move do 
  :move_heal -> "Realiza Cura"
      _ -> Actions.attack(move)
    end
  end
end
