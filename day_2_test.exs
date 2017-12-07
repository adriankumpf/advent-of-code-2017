Code.load_file("day_2.exs", __DIR__)

ExUnit.start()
ExUnit.configure(trace: true)

defmodule Day2Test do
  use ExUnit.Case

  test "produces correct checksum" do
    spreadsheet = """
    5\t1\t9\t5
    7\t5\t3
    2\t4\t6\t8
    """

    assert Day2.get_checksum(spreadsheet) == 18
  end
end
