defmodule Day5 do
  def count_steps(instructions) do
    instructions
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
    |> Enum.with_index()
    |> Enum.into(%{}, fn {v, i} -> {i, v} end)
    |> jump(0, 0)
  end

  defp jump(instructions, pos, count) do
    case Map.get_and_update(instructions, pos, fn
           nil -> {:done, nil}
           cur -> {cur, cur + 1}
         end) do
      {:done, _instr} -> count
      {jump_by, instr} -> jump(instr, pos + jump_by, count + 1)
    end
  end
end
