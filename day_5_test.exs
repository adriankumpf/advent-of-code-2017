Code.load_file("day_5.exs", __DIR__)

ExUnit.start()
ExUnit.configure(trace: true)

defmodule Day5Test do
  use ExUnit.Case

  test "correctly counts the number of steps" do
    assert Day5.count_steps("0\n3\n0\n1\n-3") == 5
  end
end
