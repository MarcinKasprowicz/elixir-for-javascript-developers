defmodule Reverse do
  def reverse_words(sentence) do
    words = String.split(sentence)

    reverse_items(words, 0, length(words) - 1)
    |> Enum.join(" ")
  end

  defp reverse_items(words, left, right, result \\ %{})

  defp reverse_items(_words, left, right, result) when left >= right do
    Map.values(result)
  end

  defp reverse_items(words, left, right, result) do
    result = Map.put(result, left, Enum.at(words, right))
    result = Map.put(result, right, Enum.at(words, left))

    reverse_items(words, left + 1, right - 1, result)
  end
end
