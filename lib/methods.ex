defmodule TamnoonSample.Methods do
  use Tamnoon.Methods

  defmethod :nudge do
    key = Tamnoon.Methods.get_key(req, state)
    val = Map.get(state, key)
    new_val = if (req["direction"] == "up"), do: val + 1, else: val - 1
    new_state = Map.put(state, key, new_val)
    {%{key => new_val}, new_state}
  end
end
