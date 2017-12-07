Code.load_file("day_3.exs", __DIR__)

ExUnit.start()
ExUnit.configure(trace: true)

defmodule Day3Test do
  use ExUnit.Case

  test "calculates the correct number of steps" do
    assert Day3.calculate_steps(1) == 0
    assert Day3.calculate_steps(12) == 3
    assert Day3.calculate_steps(23) == 2
    assert Day3.calculate_steps(1024) == 31
  end
end
