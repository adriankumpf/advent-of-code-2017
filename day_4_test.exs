Code.load_file("day_4.exs", __DIR__)

ExUnit.start()
ExUnit.configure(trace: true)

defmodule Day4Test do
  use ExUnit.Case

  test "correctly counts valid passphrases" do
    assert Day4.count_valid("aa bb cc dd ee") == 1
    assert Day4.count_valid("aa bb cc dd aa") == 0
    assert Day4.count_valid("aa bb cc dd aaa") == 1

    assert Day4.count_valid("""
           aa bb cc dd ee
           aa bb cc dd aa
           aa bb cc dd aaa
           """) == 2
  end
end
