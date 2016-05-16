require Logger
defmodule NamedArguments do
  @moduledoc """
  How to call it

      NamedArguments.intro birthday: "2015-00-00", name: "developerworks"
      NamedArguments.intro name: "developerworks", birthday: "2015-00-00"
      NamedArguments.intro birthday: "2015-00-00"
      NamedArguments.intro name: "developerworks"

  """
	def intro(options \\ []) do
    defaults = [name: "default name", birthday: "1900-12-15"]
    options = Keyword.merge(defaults, options) |> Enum.into(%{})
    %{name: name, birthday: birthday} = options
    Logger.debug "Hello, my name is #{name}, i was born on #{birthday}"
	end
end
