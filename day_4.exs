defmodule Day4 do
  def count_valid(passphrases) do
    passphrases
    |> String.trim()
    |> String.split("\n")
    |> Enum.reduce(0, fn passphrase, sum -> if valid?(passphrase), do: sum + 1, else: sum end)
  end

  defp valid?(passphrase) do
    passphrase
    |> String.split(" ")
    |> Enum.group_by(& &1)
    |> Map.values()
    |> Enum.all?(fn occurences -> length(occurences) == 1 end)
  end
end
