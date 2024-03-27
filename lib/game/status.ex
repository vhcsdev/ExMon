defmodule ExMon.Game.Status do 
alias ExMon.Game

  def print do
    IO.puts("\n===== O Jogo Começou =====\n")
    IO.inspect(Game.info)
    IO.puts("---------------------------------")
  end

  def print_wrong(move) do 
   IO.puts("\n===== Movimento Inválido =====\n") 
  end

  def print_move_message(:computer, :attack, damage) do 
     IO.puts("\n===== O Jogador atacou o computador causando #{damage} de dano =====\n") 
  end


  def print_move_message(:player, :attack, damage) do 
     IO.puts("\n===== O Computador atacou o o jogador causando #{damage} de dano =====\n") 
  end

end
