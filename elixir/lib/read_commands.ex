defmodule Read do
  def read_commands([]) do
    IO.puts("I have finished my job.")
  end

  def read_commands([line | rest_of_lines]) do
    case String.split(line) do
      ["$", "cd", dir_name] ->
        IO.puts("Go to \"#{dir_name}\" directory.")
        read_commands(rest_of_lines)

      ["$", "ls"] ->
        IO.puts("List directory contents.")
        read_commands(rest_of_lines)

      ["dir", dir_name] ->
        IO.puts("  Directory \"#{dir_name}\".")
        read_commands(rest_of_lines)

      [size, file_name] ->
        IO.puts("  File \"#{file_name}\" with a size of #{size}.")
        read_commands(rest_of_lines)

      value ->
        IO.puts("Couldn\"t parse #{value}!")
        {:error, :not_recognized}
    end
  end
end
