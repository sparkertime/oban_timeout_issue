defmodule WorkerWithTimeout do
  use Oban.Worker,
    queue: :whatever

  def timeout(_job), do: :timer.minutes(4)

  def perform(_) do
    raise RuntimeError, "boop"

    :ok
  end
end
