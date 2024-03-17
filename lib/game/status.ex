defmodule ExMon.Game.Status do 
alias ExMon.Game

  def print do
    IO.puts("\n===== O Jogo Começou =====\n")
    IO.inspect(Game.info)
    IO.puts("---------------------------------")
  end
end
