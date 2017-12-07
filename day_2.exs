defmodule Day2 do
  def get_checksum(spreadsheet) when is_bitstring(spreadsheet) do
    spreadsheet
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&parse_row/1)
    |> Enum.map(&get_difference/1)
    |> Enum.sum()
  end

  defp parse_row(row) do
    row
    |> String.split("\t")
    |> Enum.map(&String.to_integer/1)
  end

  defp get_difference(row) do
    Enum.max(row) - Enum.min(row)
  end
end
