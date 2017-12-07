defmodule Day1 do
  def solve_captcha(seq) when is_bitstring(seq), do: seq |> to_charlist |> do_solve_captcha

  defp do_solve_captcha(seq) do
    Stream.cycle(seq)
    |> Enum.take(length(seq) + 1)
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.filter(&mathcing?/1)
    |> Enum.map(&get_value/1)
    |> Enum.sum()
  end

  defp mathcing?([x, x]), do: true
  defp mathcing?(_), do: false

  defp get_value([x, x]), do: x - ?0
end
