defmodule Day3 do
  @moduledoc """
  I couldn't find an elegant solution :/ After spending way too timeI looked up
  the correct mathematical approach to this problem.
  """

  def calculate_steps(n) when is_number(n), do: do_calculate_steps(n)

  defp do_calculate_steps(n) when n < 1, do: :error
  defp do_calculate_steps(1), do: 0

  defp do_calculate_steps(n) do
    root = n |> :math.sqrt() |> Float.ceil() |> trunc

    currentSideLength =
      case rem(root, 2) do
        0 -> root + 1
        _ -> root
      end

    numR = trunc((currentSideLength - 1) / 2)
    cycle = trunc(n - :math.pow(currentSideLength - 2, 2))
    innerOffset = rem(cycle, currentSideLength - 1)

    numR + abs(innerOffset - numR)
  end
end
