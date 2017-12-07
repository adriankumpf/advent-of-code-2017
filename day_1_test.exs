Code.load_file("day_1.exs", __DIR__)

ExUnit.start()
ExUnit.configure(trace: true)

defmodule Day1Test do
  use ExUnit.Case

  test "produces correct solve_captchas" do
    assert Day1.solve_captcha("1122") == 3
    assert Day1.solve_captcha("1111") == 4
    assert Day1.solve_captcha("1234") == 0
    assert Day1.solve_captcha("91212129") == 9
  end
end
