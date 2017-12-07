defmodule Day5 do
  def count_steps(instructions) do
    instructions
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&to_int!/1)
    |> to_map
    |> jump(0, 0)
  end

  defp to_int!(str) do
    {int, ""} = Integer.parse(str, 10)
    int
  end

  defp to_map(list) do
    list
    |> Enum.with_index()
    |> Enum.into(%{}, fn {v, i} -> {i, v} end)
  end

  defp jump(instructions, pos, count) do
    case Map.get_and_update(instructions, pos, fn
           nil -> {:done, nil}
           cur -> {cur, cur + 1}
         end) do
      {:done, _new_instructions} -> count
      {move_by, new_instructions} -> jump(new_instructions, pos + move_by, count + 1)
    end
  end
end
