defmodule Inflex.Parameterize do
  @moduledoc false

  def parameterize(word, option\\"-") do
    Regex.split(~r/\s|\%20/, word, trim: true) |>
    Enum.join(option) |>
    String.downcase
  end
end
